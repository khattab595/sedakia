import 'package:app/src/main_index.dart';

///  Created by harbey on 11/8/2023.
class PaymentMethodsList extends StatelessWidget {
  final List<String> paymentMethods;
  final Function()? onDeleteMethod;

  const PaymentMethodsList(
      {Key? key, required this.paymentMethods, this.onDeleteMethod})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: paymentMethods.length,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return Container(
            padding: 10.paddingHoriz + 10.paddingVert,
            margin: 15.paddingBottom,
            color: context.hintColor,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Text('Ahmed',
                      style: context.headlineMedium.copyWith(fontSize: 12)),
                ),
                Expanded(
                  child: Text('Cash',
                      style: context.headlineMedium.copyWith(fontSize: 12)),
                ),
                Expanded(
                  child: Text('Status',
                      style: context.headlineMedium.copyWith(fontSize: 12)),
                ),
                Expanded(
                  child: Text('Active',
                      style: context.headlineMedium.copyWith(
                          fontSize: 12, color: context.secondaryContainer)),
                ),
                Expanded(
                  child: Text('12/12/2021',
                      style: context.headlineMedium.copyWith(fontSize: 12)),
                ),
                // AppIconButton(
                //   icon: AppIcons.remove,
                //   onPressed: () {
                //     onDeleteMethod?.call();
                //   },
                // ),
              ],
            ),
          );
        });
  }
}
