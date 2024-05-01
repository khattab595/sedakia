import 'package:app/core/widgets/texts/texts.dart';
import 'package:flutter/material.dart';
import '../components/base_stateless_widget.dart';

class CustomTitleRow extends BaseStatelessWidget {
   CustomTitleRow({super.key, required this.title, required this.onTap});
 final String title;
 final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Expanded(
          child: BoldText(
            label: title,
            fontSize: 20,
          ),
        ),
        InkWell(
          onTap:onTap,
          child:
          PrimaryBoldText(
            label:strings.see_all,
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
