import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:ui';

class AppColors {
  static const Color primaryDark = Color(0xff000000);
  static const Color primaryLightText = Color(0xff000000);
  static const Color primaryLight = Color(0xff606CBF);
  static const Color errorColor = Color(0xffF40000);
  static const Color greenColor = Color(0xff219653);
  static const Color backgroundColor = Color(0xffffffff);
  static const Color cardColor = Color(0xffffffff);
  static const Color borderColor = Color(0xffD0D5DD);
  static const Color greyColor = Color(0xff7A7A7A);
  static const Color dividerColor = Color(0xffE8E8E8);
  static const Color blueColor = Color(0xff0276D9);
  static const Color cafColor = Color(0xff8DDBE5);
  static const Color cafColor2 = Color(0xff307EBC);
}


extension AppColor on BuildContext{
  // bool isDark() => Theme.of(this).brightness == Brightness.dark;
  // Color get blue_E0 => isDark() ? const Color(0xFF83BAE0) : const Color(0xFF83BAE0);
  // Color get blue_EC => isDark() ? const Color(0xFF7FC0EC) : const Color(0xFF7FC0EC);
  // Color get blue_D9 => isDark() ? const Color(0xFF0082D9) : const Color(0xFF0082D9);
  // Color get blue_E8 => isDark() ? const Color(0xFF0082D9) : const Color(0xFF66B4E8);
  // Color get green_45 => isDark() ? const Color(0xFF1AA945) : const Color(0xFF1AA945);
}