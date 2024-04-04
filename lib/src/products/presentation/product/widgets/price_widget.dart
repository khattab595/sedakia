import 'package:app/core/exceptions/extensions.dart';
import 'package:flutter/material.dart';

///  Created by harbey on 9/6/2023.
class PriceWidget extends StatelessWidget {
  final String price;
  final Color? priceColor;
  final TextStyle? textStyle;
  final TextStyle? egpStyle;
  final EdgeInsetsGeometry? padding;
  const PriceWidget({Key? key, required this.price, this.priceColor, this.textStyle, this.egpStyle, this.padding}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          price,
          style: textStyle ?? context.headlineLarge.copyWith(fontSize: 16, color: priceColor),
        ),
        Text(
          " ${context.strings.egp}",
          style: egpStyle ?? context.headlineLarge.copyWith(fontSize: 10, color: priceColor),
        ),
      ],
    );
  }
}
