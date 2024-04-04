
import 'package:app/src/wallet/presentation/widgets/payment_method/payment_methods_list.dart';

import '../../../../../core/widgets/drop_down/drop_down.dart';
import '../../../../../core/widgets/drop_down/drop_down_border.dart';
import '../../../../../core/widgets/switch/custom_switch.dart';
import '../../../../../core/widgets/text-field/text_field_border.dart';
import '../../../../main_index.dart';
import '../../../domain/entities/payment_method.dart';

///  Created by harbey on 11/8/2023.
class PaymentMethodsScreen extends BaseStatelessWidget {
  final List<PaymentMethod> paymentMethods;
  final Function()? onAddMethod;
  final Function(String)? onDeleteMethod;

  PaymentMethodsScreen(
      {Key? key,
      required this.paymentMethods,
      this.onAddMethod,
      this.onDeleteMethod})
      : super(key: key);


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: paymentMethods.length,
      itemBuilder: (context, index) {
        final method = paymentMethods[index];
        return Container(
          padding: 10.paddingHoriz + 10.paddingVert,
          margin: 15.paddingBottom,
          color: context.hintColor,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Text(method.name ?? '',
                    style: context.headlineMedium.copyWith(fontSize: 10)),
              ),
              Expanded(
                child: Text(method.method ?? '',
                    style: context.headlineMedium.copyWith(fontSize: 10)),
              ),
              Expanded(
                child: Text('Status',
                    style: context.headlineMedium.copyWith(fontSize: 10)),
              ),
              Expanded(
                child: Text(method.getActiveDateIn(),
                    style: context.headlineMedium.copyWith(
                        fontSize: 10, color: context.secondaryContainer)),
              ),
              Expanded(
                child: Text(method.getCreatedAt(),
                    style: context.headlineMedium.copyWith(fontSize: 10)),
              ),
            ],
          ),
        );
      },
    );
  }
}
