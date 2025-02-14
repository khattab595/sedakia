import 'package:app/src/main_index.dart';

class AppColors {
  static const Color primaryDark = Color(0xff000000);
  static const Color primaryLightText = Color(0xff598000);
  static const Color primaryLight = Color(0xff598000);
  static const Color errorColor = Color(0xffF40000);
  static const Color scondColor = Color(0xffF2B648);
  static const Color backgroundColor = Color(0xffffffff);
  static const Color cardColor = Color(0xffffffff);
  static const Color borderColor = Color(0xffD0D5DD);
  static const Color greyColor = Color(0xff7A7A7A);
  static const Color greyColorB1 = Color(0xffB1B1B1);
  static const Color dividerColor = Color(0xffE8E8E8);
  static const Color blueColor = Color(0xff105FAA);
  static const Color cafColor = Color(0xff8DDBE5);
  static const Color cafColor2 = Color(0xff307EBC);
  static const Color orangeColor = Color(0xffFF6B00);
  static const Color blueColorff = Color(0xff1A138E);
  static const Color orangeLight = Color(0xffFFE9D4);
  static const Color blueLight = Color(0xff105FAA);
  static const Color colorF4 = Color(0xffF5F4F4);
  static const Color colorF2 =   Color(0xffF2F2F2);
}

extension AppColor on BuildContext {
  // bool isDark() => Theme.of(this).brightness == Brightness.dark;
  // Color get blue_E0 => isDark() ? const Color(0xFF83BAE0) : const Color(0xFF83BAE0);
  // Color get blue_EC => isDark() ? const Color(0xFF7FC0EC) : const Color(0xFF7FC0EC);
  // Color get blue_D9 => isDark() ? const Color(0xFF0082D9) : const Color(0xFF0082D9);
  // Color get blue_E8 => isDark() ? const Color(0xFF0082D9) : const Color(0xFF66B4E8);
  // Color get green_45 => isDark() ? const Color(0xFF1AA945) : const Color(0xFF1AA945);
}
