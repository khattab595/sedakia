import 'package:app/src/main_index.dart';

import 'custom_text_field.dart';


class TextFieldBorder extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;
  final String? labelText;
  final bool isPassword;
  final VoidCallback? onTap;
  final Function(String)? onChanged;
  final String? Function(String?)? validator;
  final InputDecoration? inputDecoration;
  final TextInputType? keyboardType;
  final Color? fillColor;
  final TextStyle? hintStyle;
  final TextAlign? textAlign;
  final Widget? prefixIcon;
  final String? iconPath;
  final Widget? suffixIcon;
  final int? maxLines;
  final Color? colorBorderSide;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? contentPadding;
  final double? radius;
  final bool? isValidator;
  const TextFieldBorder({Key? key, this.controller, this.hintText, this.labelText, this.isPassword = false, this.onTap, this.onChanged, this.validator, this.inputDecoration, this.keyboardType, this.fillColor, this.hintStyle, this.textAlign, this.prefixIcon, this.maxLines, this.colorBorderSide, this.margin, this.contentPadding, this.suffixIcon, this.radius, this.iconPath, this.isValidator = true}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // if
    Color? borderColor = colorBorderSide ?? context.backgroundColor ?? context.backgroundColor;
    return CustomTextField(
      hintText: hintText,
      fillColor: fillColor ?? context.hintColor,
      colorBorderSide: borderColor,
      controller: controller,
      title: labelText,
      isPassword: isPassword,
      onTap: onTap,
      onChanged: onChanged,
      validator: isValidator! ? validator : null,
      inputDecoration: inputDecoration,
      keyboardType: keyboardType,
      hintStyle: hintStyle ?? context.headlineSmall.copyWith(fontSize: 16),
      textAlign: textAlign,
      prefixIcon: prefixIcon,
      suffixIcon: suffixIcon,
      maxLines: maxLines,
      margin: margin ?? 16.paddingHoriz + 6.paddingVert,
      contentPadding: contentPadding,
      radius: radius ?? 12,
      prefixIconPath: iconPath,
      isValidator: isValidator,
    );
  }
}
