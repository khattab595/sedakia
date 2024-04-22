import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

const Color primaryColor = Color(0xff5FC1CF);
const Color lighterDarkColor = Color(0xff69452E);
const secondaryColor = Color(0xffffffff);
const Color kGreyColor = Color(0xff818185);
const Color blackColor = Color(0xff000000);
const String fontBold = 'Tajawal-Bold';
const String fontSemiBold = 'Tajawal-Bold';
const String fontMedium = 'Tajawal-Medium';
const String fontRegular = 'Tajawal-Regular';


final lightTheme = ThemeData(
  primaryColor: primaryColor,
  brightness: Brightness.light,
  primaryColorDark: blackColor,
  scaffoldBackgroundColor: const Color(0xffffffff),
  hintColor: const Color(0xffF7F6F6),
  cardColor: const Color(0xffffffff),
  dividerColor: const Color(0xffD0D5DD),
  shadowColor: blackColor.withOpacity(0.29),
  dividerTheme: const DividerThemeData(
    space: 0,
    thickness: 1,
    color: Color(0xffF7F6F6),
  ),
  // iconTheme: const IconThemeData(
  //   color: kYellowColor,
  // ),
  colorScheme: ColorScheme.fromSwatch(
    primarySwatch: Colors.green,
    //   primaryColorDark: const Color(0xFF232323),
    backgroundColor: secondaryColor,
    accentColor: const Color(0xff494949),
    errorColor: const Color(0xffF67D31),
  ).copyWith(
    secondaryContainer: const Color(0xff06bd3d),
    primaryContainer: const Color(0xffF9F0E1),
    onSecondary: const Color(0xffF67D31),
    secondary: const Color(0xffffffff),
    outline: const Color(0xff818185),
  ),
  appBarTheme: const AppBarTheme(
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: secondaryColor,
      statusBarIconBrightness: Brightness.light,
    ),
    color: Color(0xffffffff),
    elevation: 0,
    foregroundColor: Color(0xffF9F0E1),
    titleTextStyle: TextStyle(
      fontSize: 20,
      fontFamily: fontBold,
      fontWeight: FontWeight.w700,
      color: blackColor,
    ),
    //  backgroundColor: secondaryColor,
    centerTitle: true,
  ),
  inputDecorationTheme: const InputDecorationTheme(
    filled: true,
    fillColor: Color(0xffffffff),
    hintStyle: TextStyle(
      fontSize: 14,
      fontFamily: 'Cairo-Regular',
    ),

  ),
  fontFamily: fontBold,
  textTheme:  const TextTheme(
    titleLarge: TextStyle(
      fontSize: 32,
      fontFamily: fontBold,
      fontWeight: FontWeight.bold,
      color: blackColor,
    ),
    titleMedium: TextStyle(
      fontSize: 22,
      fontFamily: fontBold,
      fontWeight: FontWeight.bold,
      color: blackColor,
    ),
    titleSmall: TextStyle(
      fontSize: 20.0,
      color: blackColor,
      fontFamily: fontRegular,
      fontWeight: FontWeight.bold,
    ),

    bodyLarge: TextStyle(
      fontSize: 16.0,
      color: blackColor,
      fontFamily: fontSemiBold,
      fontWeight: FontWeight.w600,
    ),
    bodyMedium: TextStyle(
      fontSize: 14.0,
      color: blackColor,
      fontFamily: fontMedium,
      fontWeight: FontWeight.w500,
    ),
    bodySmall: TextStyle(
      fontSize: 12.0,
      color: blackColor,
      fontFamily: fontRegular,
      fontWeight: FontWeight.w400,
    ),
    displayLarge: TextStyle(
      fontSize: 18.0,
      color: kGreyColor,
      fontFamily: fontSemiBold,
      fontWeight: FontWeight.w600,
    ),
    displayMedium: TextStyle(
      fontSize: 16.0,
      color: kGreyColor,
      fontFamily: fontMedium,
      fontWeight: FontWeight.w500,
    ),
    displaySmall: TextStyle(
      fontSize: 14.0,
      color: kGreyColor,
      fontFamily: fontRegular,
      fontWeight: FontWeight.w400,
    ),
    labelLarge: TextStyle(
      fontSize: 16.0,
      color: Colors.white,
      fontFamily: fontSemiBold,
      fontWeight: FontWeight.w600,
    ),
    labelMedium: TextStyle(
      fontSize: 14.0,
      color: Colors.white,
      fontFamily: fontMedium,
      fontWeight: FontWeight.w500,
    ),
    labelSmall: TextStyle(
      fontSize: 12.0,
      color: Colors.white,
      fontFamily: fontRegular,
      fontWeight: FontWeight.w400,
      letterSpacing: 1.0,
      wordSpacing: 0.0,
    ),
    headlineSmall: TextStyle(
      fontSize: 14.0,
      color: primaryColor,
      fontFamily: fontRegular,
      fontWeight: FontWeight.w400,
    ),
    headlineMedium: TextStyle(
      fontSize: 16.0,
      color: primaryColor,
      fontFamily: fontMedium,
      fontWeight: FontWeight.w500,
    ),
    headlineLarge: TextStyle(
      fontSize: 18.0,
      color: primaryColor,
      fontFamily: fontSemiBold,
      fontWeight: FontWeight.w600,
    ),

  ),
);