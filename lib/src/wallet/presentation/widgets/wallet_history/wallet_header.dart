import 'package:app/core/exceptions/extensions.dart';
import 'package:flutter/material.dart';

import '../../../../../core/decorations/decorations.dart';

///  Created by harbey on 10/16/2023.
class WalletHeader extends StatelessWidget {
  const WalletHeader({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: 10.paddingHoriz + 10.paddingVert,
      color: context.hintColor,
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Text(context.strings.info,
                style: context.headlineMedium.copyWith(fontSize: 14)),
          ),
          Expanded(
            flex: 1,
            child: Text(context.strings.amount,
                style: context.headlineMedium.copyWith(fontSize: 14)),
          ),
          Expanded(
            flex: 1,
            child: Text(context.strings.date,
                style: context.headlineMedium.copyWith(fontSize: 14)),
          ),
        ],
      ),
    );
  }
}
