import 'package:app/core/exceptions/extensions.dart';
import 'package:app/core/widgets/drop_down/loading_widget.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

import '../../components/base_stateless_widget.dart';
import '../../resources/validation.dart';
import '../texts/hint_texts.dart';
import '../texts/primary_texts.dart';

class DropDownField extends BaseStatelessWidget {
  final List<DropDownItem> items;
  final String? title;
  final String? hint;
  final String? value;
  final double? borderRadius;
  final double? height;
  final TextStyle? texStyle;
  final IconData? prefixIcon;
  final Widget? iconWidget;
  final void Function(DropDownItem) onChanged;
  final bool isValidator;
  final String? Function(dynamic)? validator;
  final TextStyle? style;
  final Color? colorBorderSide;
  final Color? fillColor;
  final Color? iconColor;
  final TextStyle? hintStyle;
  final bool isLoading;
  final EdgeInsetsGeometry? padding;

  DropDownField(
      {Key? key,
      required this.items,
      this.title,
      this.height,
      this.borderRadius,
      this.hint,
      required this.onChanged,
      this.prefixIcon,
      this.texStyle,
      this.iconColor,
      this.value,
      this.iconWidget,
      this.isValidator = true,
      this.validator,
      this.style,
      this.colorBorderSide,
      this.fillColor,
      this.hintStyle,
      this.isLoading = false,
      this.padding
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color? borderColor = colorBorderSide ?? context.dividerColor;
    return Padding(
      padding: padding ?? 0.paddingBottom,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (title != null) ...[
            PrimaryMediumText(label: title!, fontSize: 16),
            5.ph
          ],
          DropdownButtonFormField2<DropDownItem>(
            isExpanded: true,
            decoration: InputDecoration(
              // Add Horizontal padding using menuItemStyleData.padding so it matches
              // the menu padding when button's width is not specified.
              hintText: hint,
              hintStyle: hintMediumStyle,
              filled: true,
              fillColor:
                  fillColor ?? context.theme.inputDecorationTheme.fillColor,
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 2, horizontal: 0),
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: borderColor,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: primaryColor,
                  width: 1.5,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Color(0xffF2F2F2),
                ),
                borderRadius: BorderRadius.circular(borderRadius ?? 12),
              ),
              // Add more decoration..
            ),
            hint: Text(
              hint ?? '',
              style: hintStyle ?? context.displaySmall.copyWith(fontSize: 16),
            ),
            value: getInitialValue(),
            items: items
                .map((item) => DropdownMenuItem<DropDownItem>(
                      value: item,
                      child: Text(
                        item.title ?? '',
                        style: context.bodyMedium,
                        textAlign: TextAlign.center,
                      ),
                    ))
                .toList(),
            validator: isValidator
                ? (value) => Validation.validateRequired(value?.title ?? '')
                : null,
            onChanged: (value) {
              onChanged(value!);
            },
            onSaved: (value) {
              //  selectedValue = value.toString();
            },
            buttonStyleData: ButtonStyleData(
              height: height,
              padding: const EdgeInsets.only(left: 10),
              // decoration: BoxDecoration(
              //   color: Colors.transparent,
              // ),
            ),
            iconStyleData: IconStyleData(
              icon: isLoading
                  ? const SmallLoading()
                  : Icon(
                      Icons.keyboard_arrow_down_rounded,
                      color: hintBoldStyle.color,
                    ),
              iconSize: 30,
            ),
            dropdownStyleData: DropdownStyleData(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                // color: context.theme.inputDecorationTheme.fillColor,
              ),
            ),
            menuItemStyleData: const MenuItemStyleData(
              padding: EdgeInsets.symmetric(horizontal: 16),
            ),
          ),
        ],
      ),
    );
  }

  getInitialValue() {
    if (value != null && value!.isNotEmpty && items.isNotEmpty) {
      return items.firstWhereOrNull((element) => element.id == value);
    } else {
      return null;
    }
  }
}

// class DefaultDropDown extends StatelessWidget {
//   final List<DropdownMenuItem>? items;
//   final String? hintText;
//   final String? value;
//   final TextStyle? texStyle;
//   final IconData? prefixIcon;
//   final bool? isLoading;
//   final void Function(dynamic)? onChanged;
//   final bool isValidator;
//   const DefaultDropDown({Key? key, this.items, this.hintText, this.value, this.texStyle, this.prefixIcon, this.isLoading = false, this.onChanged, this.isValidator = true}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return  isLoading! ? DropDownField(
//       prefixIcon: prefixIcon,
//       hint: hintText,
//   //    iconWidget: const LoadingWidget(size: 40, strokeWidth: 2.5),
//     ) : DropDownField(
//       prefixIcon: prefixIcon,
//       hint: hintText,
//       texStyle:Theme.of(context).textTheme.labelSmall,
//       items: items,
//       onChanged: onChanged,
//       isValidator: isValidator,
//     );
//   }
// }

class DropDownItem {
  final String? id;
  final String? title;
  final String? value;
  final IconData? icon;
  final Widget? child;

  const DropDownItem({this.id, this.title, this.value, this.icon, this.child});
}
