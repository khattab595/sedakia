import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:ui';

class AppColors {
  static const Color kPrimaryDark = Color(0xff000000);
  static const Color kPrimaryLight = Color(0xffffffff);
  static const Color kErrorColor = Color(0xffDC362E);
  static const Color kGreenColor = Color(0xff219653);
  static const Color kBackgroundColor = Color(0xffE3E5E6);
  static const Color kBorderColor = Color(0xffD3D3D3);
  static const Color kGreyColor = Color(0xff6C6C6C);
  static const Color kDividerColor = Color(0xffE8E8E8);
  static const Color kBlueColor = Color(0xff0276D9);
  static const Color kCafColor = Color(0xff8DDBE5);

}


extension AppColor on BuildContext{
  bool isDark() => Theme.of(this).brightness == Brightness.dark;
  Color get blue_E0 => isDark() ? const Color(0xFF83BAE0) : const Color(0xFF83BAE0);
  Color get blue_EC => isDark() ? const Color(0xFF7FC0EC) : const Color(0xFF7FC0EC);
  Color get blue_D9 => isDark() ? const Color(0xFF0082D9) : const Color(0xFF0082D9);
  Color get blue_E8 => isDark() ? const Color(0xFF0082D9) : const Color(0xFF66B4E8);
  Color get green_45 => isDark() ? const Color(0xFF1AA945) : const Color(0xFF1AA945);
}