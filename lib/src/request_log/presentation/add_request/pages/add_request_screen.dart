import 'dart:io';

import 'package:app/core/utils/helper_methods.dart';
import 'package:app/core/widgets/text-field/custom_text_field.dart';
import 'package:app/core/widgets/texts/primary_texts.dart';
import 'package:app/src/request_log/data/models/add_request_params.dart';

import '../../../../../core/widgets/drop_down/drop_down.dart';
import '../../../../main_index.dart';
import '../../../domain/entities/leave_type.dart';
import '../widgets/filter_date_widget.dart';
import '../widgets/request_type.dart';

class AddRequestScreen extends BaseStatelessWidget {
  final List<DropDownItem>? leaveTypes;
  final List<DropDownItem>? leaveSubTypes;
  final Function(AddRequestParams) onAddRequest;

  AddRequestScreen({
    Key? key,
    this.leaveTypes,
    this.leaveSubTypes,
    required this.onAddRequest,
  }) : super(key: key);

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String type = '';
  TextEditingController reasonController = TextEditingController();
  TextEditingController moneyController = TextEditingController();
  TextEditingController attachmentsController = TextEditingController();
  StreamStateInitial<String> isShowTime = StreamStateInitial();
  AddRequestParams params = AddRequestParams();
  List<File> files = [];

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: SingleChildScrollView(
        child: Column(
          children: [
            30.ph,
            Container(
              margin: 20.paddingHoriz,
              padding: 20.paddingTop + 15.paddingHoriz,
              decoration: Decorations.kDecorationBorderRadius(
                  borderColor: dividerColor, radius: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  PrimaryMediumText(
                    label: strings.select_the_request_type,
                    fontSize: 20,
                  ),
                  13.ph,
                  RequestType(
                    leaveTypes: leaveTypes,
                    onChanged: (id) {
                      type = id ?? '';
                      params.leaveType = id;
                      isShowTime.setData(type);
                    },
                  ),
                  13.ph,
                  StreamBuilder<String>(
                      stream: isShowTime.stream,
                      builder: (context, snapshot) {
                        return snapshot.data == LeaveType.vacation
                            ? Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  HolidayType(
                                    leaveSubTypes: leaveSubTypes,
                                    onChanged: (value) {
                                      params.vacationType = value;
                                    },
                                  ),
                                  13.ph,
                                  PrimaryMediumText(
                                    label: strings.set_your_absent_time,
                                    fontSize: 18,
                                  ),
                                  5.ph,
                                  FilterDateWidget(
                                    onFilter: (from, to) {
                                      params.startDate = from;
                                      params.endDate = to;
                                    },
                                  )
                                ],
                              )
                            : 0.pw;
                      }),
                  5.ph,
                  StreamBuilder<String>(
                      stream: isShowTime.stream,
                      builder: (context, snapshot) {
                        return snapshot.data == LeaveType.resignation
                            ? FilterSearchDate(
                                onFilter: (search) {
                                  params.resignationDate = search;
                                },
                              )
                            : 0.pw;
                      }),
                  StreamBuilder<String>(
                      stream: isShowTime.stream,
                      builder: (context, snapshot) {
                        return snapshot.data == LeaveType.advance
                            ? CustomTextField(
                                hintText: strings.enter_the_advance_amount,
                                radius: 10,
                                keyboardType: TextInputType.number,
                                title:
                                    "${strings.enter_the_advance_amount} (ريال سعودي)",
                                onChanged: (value) {
                                  params.advanceAmount = value;
                                },
                              )
                            : 0.ph;
                      }),
                  StreamBuilder<String>(
                      stream: isShowTime.stream,
                      builder: (context, snapshot) {
                        return CustomTextField(
                          hintText: strings.enter_description,
                          radius: 10,
                          title: strings.reason,
                          maxLines: 2,
                          onChanged: (value) {
                            params.description = value;
                          },
                        );
                      }),
                  5.ph,
                  Container(
                    padding: 10.paddingHoriz,
                    height: 70,
                    margin: 20.paddingBottom,
                    decoration: Decorations.kDecorationOnlyRadius(
                      radius: 10,
                      color: greyColor.withOpacity(0.1),
                    ),
                    child: StatefulBuilder(
                      builder: (context, setState) {
                        return Row(
                          children: [
                            AppIconButton(
                              icon: AppIcons.desc,
                              size: 30,
                              onPressed: () async {
                               final filesList =
                                    await HelperMethods.getListImagePicker();
                                files.addAll(filesList);
                                print('files: $files');
                                setState(() {});
                              },
                            ),
                            10.pw,
                            files.isEmpty
                                ? Text(
                                    strings.choose_file,
                                    style: context.displaySmall
                                        .copyWith(fontSize: 16),
                                  )
                                : SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      children: files
                                          .map(
                                            (e) => Stack(
                                              alignment:
                                                  AlignmentDirectional.topEnd,
                                              children: [
                                                Container(
                                                  margin: 15.paddingVert +
                                                      15.paddingEnd,
                                                  child: e.path.contains('.png') ||
                                                          e.path.contains('.jpg') ||
                                                          e.path.contains('.jpeg')
                                                      ?
                                                  Image.file(
                                                    e,
                                                    width: 50,
                                                    height: 50,
                                                    fit: BoxFit.fill,
                                                  ) : const Icon(
                                                    Icons.file_present_rounded,
                                                    size: 50,
                                                    color: Colors.grey,
                                                  ),
                                                ),
                                                PositionedDirectional(
                                                  end: 20,
                                                  top: 0,
                                                  child: SizedBox(
                                                    height: 20,
                                                    width: 15,
                                                    child: IconButton(
                                                      onPressed: () {
                                                        setState(() {
                                                          files.remove(e);
                                                          params.files = files;
                                                        });
                                                      },
                                                      icon: const Icon(
                                                        Icons.highlight_remove_outlined,
                                                        size: 20,
                                                      ),
                                                      color: Colors.red,
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          )
                                          .toList(),
                                    ),
                                  ),
                          ],
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            50.ph,
            PrimaryButton(
              title: strings.send_request,
              margin: 20.paddingHoriz,
              fontSize: 20,
              onPressed: () {
                onPressed();
              },
            )
          ],
        ),
      ),
    );
  }

  onPressed() {
    params.files = files;
    if (params.files == null || params.files!.isEmpty) {
      ScaffoldMessenger.of(context!).showSnackBar(
        SnackBar(
          content: Text(strings.please_choose_file),
          backgroundColor: context!.errorColor,
        ),
      );
    }
    else
    if (formKey.currentState!.validate()) {
      print('params: ${params.toJson()}');
      onAddRequest(params);
    }
  }
}
