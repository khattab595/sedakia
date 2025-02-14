import 'package:app/src/main_index.dart';

class SecondaryButton extends StatelessWidget {
  final String title;
  final Function()? onPressed;
  final double? height;
  final double? radius;
  final double? fontSize;
  final Color? borderColor;
  final Color? textColor;
  final EdgeInsetsGeometry? margin;
  final Color? backgroundColor;
  const SecondaryButton(
      {Key? key,
      this.margin,
      this.fontSize,
      required this.title,
      this.onPressed,
      this.height,
      this.radius,
      this.borderColor,
      this.textColor,
      this.backgroundColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(radius ?? 15))),
          backgroundColor: backgroundColor,
          fixedSize: Size(MediaQuery.of(context).size.width, height ?? 55),
          side:
              BorderSide(color: borderColor ?? theme.primaryColor, width: 1.5),
        ),
        child: FittedBox(
            child: Text(title,
                style: theme.textTheme.displayLarge!.copyWith(
                    color: textColor ?? theme.primaryColor,
                    fontSize: fontSize))),
      ),
    );
  }
}
