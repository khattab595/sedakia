
import 'package:path/path.dart';

import '../../src/main_index.dart';

class Decorations {
  static BoxDecoration kDecorationOnlyRadius({
    required Color color,
    double? radius,
  }) {
    return BoxDecoration(
      color: color,
      borderRadius: BorderRadius.all(Radius.circular(radius ?? 12)),
    );
  }
  static BoxDecoration baseDecorationRadius({
    Color? color,
    double? radius,
  }) {
    return BoxDecoration(
      color: color ?? injector<ServicesLocator>().appContext.hintColor,
      borderRadius: BorderRadius.all(Radius.circular(radius ?? 8)),
    );
  }
  static BoxDecoration kDecorationTopRadius({
     Color? color,
    double? radius,
  }) {
    return BoxDecoration(
      color: color ?? injector<ServicesLocator>().appContext.cardColor,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(radius ?? 12),
        topRight: Radius.circular(radius ?? 12),
      ),
    );
  }

  static BoxDecoration kDecorationLiftRadius({
    required Color color,
    double? radius,
  }) {
    return BoxDecoration(
      color: color,
      borderRadius: BorderRadiusDirectional.only(
        topStart: Radius.circular(radius ?? 15),
        bottomStart: Radius.circular(radius ?? 15),
      ),
    );
  }

  static BoxDecoration kDecorationBottomRadius({
    required Color color,
    double? radius,
  }) {
    return BoxDecoration(
      color: color,
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(radius ?? 25),
        bottomRight: Radius.circular(radius ?? 25),
      ),
    );
  }


  static BoxDecoration kDecorationBottomBorder({
    Color? color,
    Color? borderColor,
    double? width,
  }) {
    return BoxDecoration(
      color: color,
      border: Border(
        bottom: BorderSide(
          color: borderColor ?? injector<ServicesLocator>().appContext.dividerColor,
          width: 0.8,
        ),
      ),
    );
  }

  static BoxDecoration kDecorationTopBorder({
    Color? color,
    Color? borderColor,
    double? width,
  }) {
    return BoxDecoration(
      color: color,
      border: Border(
        top: BorderSide(
          color: borderColor ?? injector<ServicesLocator>().appContext.dividerColor,
          width: width ?? 0.8,
        ),
      ),
    );
  }
  static BoxDecoration kDecorationBorderRadius({
    Color? color,
    double? radius,
    Color? borderColor,
    double? borderWidth,
    double? t,
  }) {
    return BoxDecoration(
      color: color,
      borderRadius: BorderRadius.all(Radius.circular(radius ?? 12)),
      border: Border.all(
        color: borderColor ?? kBorderColor,
        width: borderWidth ?? 1.0,
      ),
    );
  }
  static BoxDecoration kDecorationRadius({
    Color? color,
    double? radius,
    Color? borderColor,
    double? borderWidth,
    double? t,
  }) {
    return BoxDecoration(
      color: color,
      borderRadius: BorderRadius.all(Radius.circular(radius ?? 12)),
    );
  }

  static BoxDecoration boxShape({
    required Color color,
  }) {
    return BoxDecoration(
      color: color,
      shape: BoxShape.circle,
    );
  }

  static ShapeDecoration shapeDecorationShadow({Color? color, Color? colorShadow, double? radius, BorderRadiusGeometry? borderRadius}) {
    final appContext = injector<ServicesLocator>().appContext;
    return ShapeDecoration(
      color: color ?? appContext.cardColor,
      shape: RoundedRectangleBorder(
          borderRadius: borderRadius ?? BorderRadius.circular(radius ?? 20)),
      shadows: [
        BoxShadow(
          color: colorShadow ?? appContext.shadowColor.withOpacity(0.1),
          blurRadius: 10,
          offset: Offset(0, 2),
          spreadRadius: 0,
        )
      ],
    );
  }
  static ShapeDecoration shapeBottomShadow({required Color color, required Color colorShadow, double? radius}) {
    return ShapeDecoration(
      color: color,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius ?? 15)),
      shadows: [
        BoxShadow(
          color: colorShadow.withOpacity(0.05),
          blurStyle: BlurStyle.solid,
          offset: Offset(100, 100),
        )
      ],
    );
  }

  static ShapeDecoration shapeTopShadow({required Color color, required Color colorShadow, double? radius}) {
    return ShapeDecoration(
      color: color,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius ?? 15)),
      shadows: [
        BoxShadow(
          color: colorShadow.withOpacity(0.2),
          blurRadius: 20,
          spreadRadius: 0,

        )
      ],
    );
  }

  static BoxDecoration decorationBorderShadow({Color? color, required Color borderColor, required Color colorShadow, double? radius}) {
    return BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(radius ?? 12),
      border: Border.all(
        color: borderColor,
        width: 1.0,
      ),
      boxShadow: [
        BoxShadow(
          color: colorShadow.withOpacity(0.5),
          blurRadius: 10,
          offset: Offset(0, 0),
          spreadRadius: 0,
        )
      ],
    );
  }

  static BoxDecoration decorationStartEndRadiusBorder({Color? color, Color? borderColor, double? radiusStart, double? radiusEnd}) {
    return BoxDecoration(
      color: color,
      borderRadius: startEndRadiusBorder(
        topStart: radiusStart ?? 8,
        bottomStart: radiusStart ?? 8,
        topEnd: radiusEnd ?? 0,
        bottomEnd: radiusEnd ?? 0,
      ),
      border: Border.all(
        color: injector<ServicesLocator>().appContext.primaryColor,
        width: 1.0,
      ),
    );
  }
  static BoxDecoration decorationStartEndBorder({Color? color, double? topStart, double? topEnd, double? bottomStart, double? bottomEnd}) {
    return BoxDecoration(
      color: color,
      borderRadius: startEndRadiusBorder(
        topStart: topStart ?? 0,
        bottomStart: bottomStart ?? 0,
        topEnd: topEnd ?? 10,
        bottomEnd: bottomEnd ?? 0,
      ),
    );
  }
  static BorderRadiusGeometry startEndRadiusBorder({double? topStart, double? topEnd, double? bottomStart, double? bottomEnd}) {
    return BorderRadiusDirectional.only(
      topStart: Radius.circular(topStart ?? 10),
      bottomStart: Radius.circular(bottomStart ?? 0),
      bottomEnd: Radius.circular(bottomEnd ?? 0),
      topEnd: Radius.circular(topEnd ?? 0),
    );
  }
  static BoxDecoration kDecorationCircleBorderRadius({
    Color? color,
    Color? borderColor,
    double? borderWidth,
  }) {
    return BoxDecoration(
      color: color,
      shape: BoxShape.circle,
      border: Border.all(
        color: borderColor ?? kBorderColor,
        width: borderWidth ?? 1.0,
      ),
    );
  }
}
