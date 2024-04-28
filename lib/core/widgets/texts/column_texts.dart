import 'package:app/core/exceptions/extensions.dart';
import 'package:flutter/material.dart';

class ColumnTexts extends StatelessWidget {
  final String title;
  final String value;
  final TextStyle? titleStyle;
  final TextStyle? valueStyle;
  final StrutStyle? titleStrutStyle;
  final StrutStyle? valueStrutStyle;
  final CrossAxisAlignment? crossAxisAlignment;
  final MainAxisAlignment? mainAxisAlignment;
  final bool? isSizedBox;
  const ColumnTexts({Key? key, required this.title,  required this.value, this.titleStyle,  this.valueStyle, this.crossAxisAlignment, this.mainAxisAlignment, this.titleStrutStyle, this.valueStrutStyle, this.isSizedBox = true}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Column(
      crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.start,
      mainAxisAlignment:mainAxisAlignment ?? MainAxisAlignment.center,
      children: [
        FittedBox(
          child: Text(
            title,
            style: titleStyle ?? context.headlineSmall.copyWith(fontSize: 16),
            strutStyle: titleStrutStyle
          ),
        ),
        if(isSizedBox!)
        const SizedBox(height: 5),
        FittedBox(
          child: Text(
            value,
            style: valueStyle ?? context.headlineSmall.copyWith(fontSize: 16),
            strutStyle: valueStrutStyle
          ),
        ),
      ],
    );
  }
}
