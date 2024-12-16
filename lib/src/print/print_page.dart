import 'dart:async';
import 'dart:convert';

import 'package:app/core/exceptions/extensions.dart';
import 'package:app/core/widgets/buttons/outlined_button.dart';
import 'package:app/core/widgets/drop_down/drop_down_stream.dart';
import 'package:app/core/widgets/texts/primary_texts.dart';
import 'package:bluetooth_print/bluetooth_print.dart';
import 'package:bluetooth_print/bluetooth_print_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../core/widgets/drop_down/drop_down.dart';
import '../main_index.dart';
import '../requests/data/models/order_details_dto.dart';


class PrintPage extends StatefulWidget {
  const PrintPage({super.key});
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<PrintPage> {
  BluetoothPrint bluetoothPrint = BluetoothPrint.instance;

  bool _connected = false;
  BluetoothDevice? _device;
  String tips = 'no device connect';

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    tips = context.getStrings().scanning;

    WidgetsBinding.instance.addPostFrameCallback((_) => initBluetooth(context));
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initBluetooth(BuildContext context) async {
    bluetoothPrint.startScan(timeout: const Duration(seconds: 4));

    bool isConnected=await bluetoothPrint.isConnected??false;

    bluetoothPrint.state.listen((state) {
      print('******************* cur device status: $state');

      switch (state) {
        case BluetoothPrint.CONNECTED:
          setState(() {
            _connected = true;
            tips = context.getStrings().connect_success;
          });
          break;
        case BluetoothPrint.DISCONNECTED:
          setState(() {
            _connected = false;
            tips = context.getStrings().disconnect_success;
          });
          break;
        default:
          break;
      }
    });
    bluetoothPrint.scanResults.listen((devices) {
      if (devices.isNotEmpty) {
        setState(() {
          tips = context.getStrings().select_device;
        });
      } else {
        setState(() {
          tips = context.getStrings().no_device_found;
        });
      }
    });

    bluetoothPrint.isScanning.listen((isScanning) {
      if (isScanning) {
        setState(() {
          tips = context.getStrings().scanning;
        });
      } else {
        if (_device == null) {
          setState(() {
            tips = context.getStrings().no_device_found;
          });
        }
      }
    });

    if (!mounted) return;

    if(isConnected) {
      setState(() {
        _connected=true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final strings = context.getStrings();
    return AppScaffold(
      title: strings.print_the_invoice,
      body: RefreshIndicator(
        onRefresh: () =>
            bluetoothPrint.startScan(timeout: const Duration(seconds: 4)),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    child: Text(tips),
                  ),
                ],
              ),
              const Divider(),
              StreamBuilder<List<BluetoothDevice>>(
                stream: bluetoothPrint.scanResults,
                initialData: [],
                builder: (c, snapshot) => Column(
                  children: snapshot.data!.map((d) => ListTile(
                    title: Text(d.name??''),
                    subtitle: Text(d.address??''),
                    onTap: () async {
                      setState(() {
                        _device = d;
                      });
                    },
                    trailing: _device!=null && _device!.address == d.address?const Icon(
                      Icons.check,
                      color: Colors.green,
                    ):null,
                  )).toList(),
                ),
              ),
              StreamBuilder<List<BluetoothDevice>>(
                stream: bluetoothPrint.scanResults,
                initialData: [],
                builder: (context, snapshot) {
                  return DropDownField(
                    items: snapshot.data!.map((e) {
                      return DropDownItem(title: "${e.name} - ${e.address}", id: e.address ?? '');
                    }).toList(),
                    hint:
                    (snapshot.data != null && snapshot.data!.isNotEmpty)
                        ? strings.select_device : strings.no_device_found,
                    title: strings.select_device,
                    value: _device?.address,
                      padding: 20.paddingAll,
                    onChanged: (value) {
                      _device = snapshot.data!.firstWhere((element) => element.address == value.id);
                    },
                  );
                },
              ),
              const Divider(height: 20),
              Container(
                padding: const EdgeInsets.fromLTRB(20, 5, 20, 10),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        OutlinedButton(
                          onPressed:  _connected?null:() async {
                            if(_device!=null && _device!.address !=null){
                              setState(() {
                                tips = strings.connecting;
                              });
                              await bluetoothPrint.connect(_device!);
                            }else{
                              setState(() {
                                tips = strings.please_select_device;
                              });
                              print('please select device');
                            }
                          },
                          child: PrimaryBoldText(
                            label: strings.connect,
                          ),
                        ),
                        const SizedBox(width: 10.0),
                        OutlinedButton(
                          onPressed:  _connected?() async {
                            setState(() {
                              tips = strings.disconnecting;
                            });
                            await bluetoothPrint.disconnect();
                          }:null,
                          child: PrimaryBoldText(
                            label: strings.disconnect,
                            labelColor: context.errorColor,
                          ),
                        ),
                      ],
                    ),
                    const Divider(height: 50,),
                    PrimaryButton(
                      title: 'Print Receipt',
                      onPressed:  _connected?() async {
                        Map<String, dynamic> config = Map();

                        List<LineText> list = [];
                        OrderDetailsDto data = ModalRoute.of(context)!.settings.arguments as OrderDetailsDto;
                        data.items?.forEach((element) {
                          list.add(LineText(
                              type: LineText.TYPE_TEXT,
                              content: '${element.name} x ${element.quantity} = ${element.total}'));
                        });
                        list.add(LineText(
                            type: LineText.TYPE_TEXT,
                            content: 'Total: ${data.total}'));

                        await bluetoothPrint.printReceipt(config, list);
                      }:null,
                    ),
                    20.ph,
                    SecondaryButton(
                      title: 'Print Test',
                      onPressed:  _connected?() async {
                        await bluetoothPrint.printTest();
                      }:null,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: StreamBuilder<bool>(
        stream: bluetoothPrint.isScanning,
        initialData: false,
        builder: (c, snapshot) {
          if (snapshot.data == true) {
            return FloatingActionButton(
              child: const Icon(Icons.stop),
              onPressed: () => bluetoothPrint.stopScan(),
              backgroundColor: Colors.red,
            );
          } else {
            return FloatingActionButton(
                child: const Icon(Icons.search),
                onPressed: () => bluetoothPrint.startScan(timeout: const Duration(seconds: 4)));
          }
        },
      ),
    );
  }
}