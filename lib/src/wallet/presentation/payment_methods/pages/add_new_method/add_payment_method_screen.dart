import 'package:app/core/widgets/drop_down/drop_down_border.dart';
import 'package:app/core/widgets/text-field/custom_text_field.dart';

import '../../../../../../core/widgets/buttons/button_child_scroll.dart';
import '../../../../../../core/widgets/drop_down/drop_down.dart';
import '../../../../../../core/widgets/drop_down/drop_down_stream.dart';
import '../../../../../../core/widgets/switch/custom_switch.dart';
import '../../../../../main_index.dart';
import '../../../../data/models/add_method_params.dart';
import '../../../../data/models/wallet_method_fields_dto.dart';
import '../../../../domain/entities/payment_method_fields.dart';

///  Created by harbey on 11/8/2023.
class AddPaymentMethodScreen extends BaseStatelessWidget {
  final List<PaymentMethodFields> paymentMethods;
  final Function(AddMethodParams)? onAddMethod;
  final Function(String)? onDeleteMethod;

  AddPaymentMethodScreen(
      {Key? key,
      required this.paymentMethods,
      this.onAddMethod,
      this.onDeleteMethod})
      : super(key: key);

  StreamStateInitial<List<FieldDto>?> fieldsStream = StreamStateInitial();
  final formKey = GlobalKey<FormState>();
  AddMethodParams params = AddMethodParams();

  @override
  Widget build(BuildContext context) {
    fieldsStream.setData([]);
    return ButtonChildScroll(
      title: strings.save,
      onPressed: onPressed,
      children: [
        20.ph,
        DropDownFieldBorder(
          title: strings.method,
          items: paymentMethods
              .map((e) => DropDownItem(id: e.key ?? '', title: e.name))
              .toList(),
          onChanged: (value) async {
            // When dropdown items are changed,
            // must set the fieldsStream to null to delete the selected item
            // before setting the new fields because new fields throw an error if the previous fields are not deleted
            fieldsStream.setData(null);
            Future.delayed(const Duration(milliseconds: 100)).then((d) =>
                fieldsStream.setData(paymentMethods
                    .firstWhere((element) => element.key == value.id)
                    .fields));
          },
        ),
        Form(
          key: formKey,
          child: StreamBuilder<List<FieldDto>?>(
              stream: fieldsStream.stream,
              builder: (context, snapshot) {
                return snapshot.connectionState == ConnectionState.waiting
                    ? const LoadingView()
                    : Column(
                        children: snapshot.data?.map((e) {
                              return e.type == 'select'
                                  ? DropDownFieldChanged(
                                      title: e.name,
                                      items: e.values
                                              ?.map((e) => DropDownItem(
                                                  id: e.key ?? '',
                                                  title: e.value.toString()))
                                              .toList() ??
                                          [],
                                      style: context.headlineSmall
                                          .copyWith(fontSize: 16),
                                      fillColor: context.hintColor,
                                      colorBorderSide: context.backgroundColor,
                                      hintStyle: context.headlineSmall
                                          .copyWith(fontSize: 16),
                                      isLoading: snapshot.data == null,
                                      onChanged: (value) {
                                        params.fields?[
                                                snapshot.data!.indexOf(e)] =
                                            FieldValue(
                                                name: e.key, value: value.id);
                                      },
                                    )
                                  : CustomTextField(
                                      title: e.name,
                                      keyboardType: TextInputType.text,
                                      fillColor: context.hintColor,
                                      colorBorderSide: context.backgroundColor,
                                      isValidator: e.required ?? true,
                                      margin: basePadding,
                                      onChanged: (value) {
                                        params.fields?[
                                                snapshot.data!.indexOf(e)] =
                                            FieldValue(
                                                name: e.key, value: value);
                                      },
                                    );
                            }).toList() ??
                            [],
                      );
              }),
        ),
      ],
    );
  }

  onPressed() {
    print('Button clicked');
  }
}
