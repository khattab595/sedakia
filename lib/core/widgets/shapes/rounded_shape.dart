import 'package:app/src/main_index.dart';

class ContainerShapeShadow extends StatelessWidget {
  final Widget child;

  final Color? color;

  final double? height;

  final double? width;

  final double? radius;

  final EdgeInsetsGeometry?margin;
  final EdgeInsetsGeometry?padding;

  const ContainerShapeShadow(
      {Key? key,
      this.color,
        this.padding,
      required this.child,
      this.height,
      this.width,
        this.margin,
      this.radius})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      height: height,
      width: width,
      padding: padding??12.paddingAll,
      alignment: AlignmentDirectional.center,
      decoration: Decorations.shapeDecorationShadow(radius: radius),
      child: child,
    );
  }
}
