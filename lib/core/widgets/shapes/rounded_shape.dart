import 'package:app/src/main_index.dart';

class ContainerShapeShadow extends StatelessWidget {
  final Widget child;

  final Color? color;

  final double? height;

  final double? width;

  final double? radius;

  const ContainerShapeShadow(
      {Key? key,
      this.color,
      required this.child,
      this.height,
      this.width,
      this.radius})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: 12.paddingAll,
      alignment: AlignmentDirectional.center,
      decoration: Decorations.shapeDecorationShadow(),
      child: child,
    );
  }
}
