import 'package:app/src/main_index.dart';

import '../../../domain/entities/transaction.dart';

///  Created by harbey on 10/16/2023.
class RequestDataItem extends StatelessWidget {
  final bool isOdd;
  final Transaction transaction;
  RequestDataItem({Key? key, required this.isOdd, required this.transaction}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: 10.paddingHoriz + 10.paddingVert,
      decoration: Decorations.kDecorationBottomBorder(
        color: isOdd ? context.hintColor :  null,
        borderColor: context.backgroundColor,
      ),
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Text(transaction.method ?? '',
                style: context.headlineMedium.copyWith(fontSize: 10)),
          ),
          Expanded(
            flex: 1,
            child: Text(transaction.amount?.toString() ?? '',
                style: context.headlineLarge.copyWith(fontSize: 14, color: context.secondaryContainer),
             // textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            flex: 1,
            child: Text('2023-10-10\n12:03:20',
                style: context.headlineMedium.copyWith(fontSize: 10),
            ),
          ),
        ],
      ),
    );
  }
}
