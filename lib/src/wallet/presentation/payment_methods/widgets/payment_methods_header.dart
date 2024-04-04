import 'package:app/src/main_index.dart';

class PaymentMethodsHeader extends StatelessWidget {
  const PaymentMethodsHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: 10.paddingHoriz + 10.paddingVert,
      margin: 15.paddingBottom,
      color: context.hintColor,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Text('Name',
                style: context.headlineMedium.copyWith(fontSize: 14)),
          ),
          Expanded(
            child: Text('Method',
                style: context.headlineMedium.copyWith(fontSize: 14)),
          ),
          Expanded(
            child: Text('Status',
                style: context.headlineMedium.copyWith(fontSize: 14)),
          ),
          Expanded(
            child: Text('Active',
                style: context.headlineMedium
                    .copyWith(fontSize: 14, color: context.secondaryContainer)),
          ),
          Expanded(
            child: Text('Date',
                style: context.headlineMedium.copyWith(fontSize: 14)),
          ),
        ],
      ),
    );
  }
}
