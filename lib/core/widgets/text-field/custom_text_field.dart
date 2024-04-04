import 'package:app/src/main_index.dart';


class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;
  final String? title;
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
  final double? minHeight;
   const CustomTextField({Key? key, this.controller, this.hintText, this.title, this.isPassword = false, this.onTap, this.onChanged, this.validator, this.inputDecoration, this.keyboardType, this.fillColor, this.hintStyle, this.textAlign, this.prefixIcon, this.maxLines, this.colorBorderSide, this.margin, this.contentPadding, this.suffixIcon, this.radius, this.iconPath, this.isValidator = true, this.minHeight}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // if
    Color? borderColor = colorBorderSide ?? context.theme.inputDecorationTheme.fillColor ?? context.theme.colorScheme.onSurface;
    return Padding(
      padding: margin ?? 15.paddingBottom,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          if (title != null) ...[Text(
            title!,
            style: context.bodySmall.copyWith(fontSize: 18),
          ),
            5.ph,
          ],
          SizedBox(
            height: minHeight,
            child: TextFormField(
              onTap: onTap,
              readOnly: onTap != null,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              textAlign: textAlign ?? TextAlign.start,
              maxLines: maxLines ?? 1,
              keyboardType: isPassword ? TextInputType.visiblePassword : keyboardType,
              style: context.bodySmall.copyWith(fontSize: 16),
              obscureText: isPassword,
              controller: controller,
              textInputAction: TextInputAction.next,
              cursorColor: context.primaryColor,
              inputFormatters: [
                if (keyboardType == TextInputType.number) FilteringTextInputFormatter.digitsOnly,
              ],
              decoration: inputDecoration ?? InputDecoration(
                hintText: hintText,
                hintStyle: hintStyle ?? context.labelSmall.copyWith(fontSize: 16),
                fillColor: fillColor ?? context.theme.inputDecorationTheme.fillColor,
                filled: true,
                prefixIconConstraints:  BoxConstraints(
                  minWidth: minHeight?? 35,
                  minHeight: minHeight ?? 35,
                ),
                prefixIcon:  iconPath != null ? AppIcon(
                  padding: const EdgeInsets.all(12),
                  icon: iconPath!, color: context.onPrimary, size: 20,) : prefixIcon,
                suffixIcon: suffixIcon,
                contentPadding: contentPadding ?? const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
                border:  OutlineInputBorder(
                  borderRadius:  BorderRadius.all(Radius.circular(radius ?? 12)),
                  borderSide: BorderSide(color: borderColor),
                ),
                focusedBorder:  OutlineInputBorder(
                  borderRadius:  BorderRadius.all(Radius.circular(radius ?? 12)),
                  borderSide: BorderSide(color: borderColor),
                ),

                enabledBorder:  OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(radius ?? 12)),
                  borderSide: BorderSide(color: borderColor),
                ),
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(radius ?? 12)),
                  borderSide: BorderSide(color: context.errorColor),
                ),
              ),
              validator: (isValidator! &&  validator == null) ? (value) {
                if (value == null || value.isEmpty) {
                  return context.getStrings().this_field_is_required;
                }
                return null;
              } : validator,
              onChanged: onChanged,
            ),
          ),
        ],
      ),
    );
  }
}
