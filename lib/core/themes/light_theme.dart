import 'package:app/src/main_index.dart';



const Color primaryColor = Color(0xffD11317);
const Color lighterDarkColor = Color(0xff252525);
const secondaryColor = Color(0xff0083DA);
const String fontFamily = 'Cairo';

final lightTheme = ThemeData(
  primaryColor: primaryColor,
  brightness: Brightness.light,
  primaryColorDark: const Color(0xff191919),
  scaffoldBackgroundColor: const Color(0xffFEFEFE),
  hintColor: const Color(0xffF7F6F6),
  disabledColor: kYellowColor.withOpacity(0.5),
  cardColor: const Color(0xffffffff),
  dividerColor: kDividerColor,
  switchTheme: SwitchThemeData(
    thumbColor: MaterialStateProperty.all<Color>(const Color(0xffffc001)),
    trackColor: MaterialStateProperty.all<Color>(kGreyColor),
  ),
  iconTheme: const IconThemeData(
    color: kYellowColor,
  ),
  colorScheme: ColorScheme.fromSwatch(
    primarySwatch: Colors.green,
 //   primaryColorDark: const Color(0xFF232323),
    backgroundColor: secondaryColor,
    accentColor: const Color(0xff494949),
    errorColor: const Color(0xffF67D31),
  ).copyWith(
    secondaryContainer: Color(0xff06bd3d),
    background: const Color(0xff66B4E8),
    primaryContainer: const Color(0xffd6e6f1),
    errorContainer: kErrorColor,
    onBackground: kBlueColor,
    onSurface: kBorderColor,
    onSecondary: const Color(0xffF67D31),
    secondary: secondaryColor,
    onError: kRedColorEB,
    surface: kOrangeColor,
    onPrimary: Color(0xffffbf00),
  ),
  appBarTheme: const AppBarTheme(
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: secondaryColor,
      statusBarIconBrightness: Brightness.light,
    ),
    foregroundColor: Colors.white,
    titleTextStyle: TextStyle(
      fontSize: 18,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
    backgroundColor: secondaryColor,
    centerTitle: true,
    elevation: 0,
  ),
  inputDecorationTheme: const InputDecorationTheme(
    // filled: true,
    // fillColor: Color(0xffA0DBFF),
    hintStyle: TextStyle(
      fontSize: 14,
      fontFamily: 'Cairo-Regular',
    ),
  ),
  fontFamily: fontFamily,
  textTheme:  const TextTheme(
    titleLarge: TextStyle(
      fontSize: 32,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w700,
      color: Colors.black,
    ),
    titleMedium: TextStyle(
      fontSize: 22,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w500,
      color: Colors.black,
    ),
    titleSmall: TextStyle(
      fontSize: 20.0,
      color: Colors.black,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w400,
    ),

    bodyLarge: TextStyle(
      fontSize: 16.0,
      color: Colors.black,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w600,
    ),
    bodyMedium: TextStyle(
      fontSize: 14.0,
      color: Colors.black,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w500,
    ),
    bodySmall: TextStyle(
      fontSize: 12.0,
      color: Colors.black,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w400,
    ),
    displayLarge: TextStyle(
      fontSize: 18.0,
      color: kGreyColor,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w600,
    ),
    displayMedium: TextStyle(
      fontSize: 16.0,
      color: kGreyColor,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w500,
    ),
    displaySmall: TextStyle(
      fontSize: 14.0,
      color: kGreyColor,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w400,
    ),
    labelLarge: TextStyle(
      fontSize: 16.0,
      color: Colors.white,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w600,
    ),
    labelMedium: TextStyle(
      fontSize: 14.0,
      color: Colors.white,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w500,
    ),
    labelSmall: TextStyle(
      fontSize: 12.0,
      color: Colors.white,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w400,
      letterSpacing: 1.0,
      wordSpacing: 0.0,
    ),
    headlineSmall: TextStyle(
      fontSize: 14.0,
      color: secondaryColor,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w400,
    ),
    headlineMedium: TextStyle(
      fontSize: 16.0,
      color: secondaryColor,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w500,
    ),
    headlineLarge: TextStyle(
      fontSize: 18.0,
      color: secondaryColor,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w600,
    ),

  ),
);