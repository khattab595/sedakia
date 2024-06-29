
import '../../src/main_index.dart';
import 'fonts.dart';

// const Color primaryColor = Color(0xff5FC1CF);
// const Color lighterDarkColor = Color(0xff69452E);
// const secondaryColor = Color(0xffffffff);
// const Color kGreyColor = Color(0xff818185);
// const Color blackColor = Color(0xff000000);


final lightTheme = ThemeData(
  primaryColor: AppColors.primaryLight,
  brightness: Brightness.light,
  primaryColorDark: AppColors.primaryDark,
  scaffoldBackgroundColor: AppColors.backgroundColor,
  hintColor: AppColors.greyColor,
  cardColor: AppColors.cardColor,
  dividerColor: AppColors.borderColor,
  shadowColor: AppColors.primaryDark.withOpacity(0.29),
  dividerTheme: const DividerThemeData(
    space: 0,
    thickness: 1,
    color: AppColors.borderColor,
  ),
  // iconTheme: const IconThemeData(
  //   color: kYellowColor,
  // ),
  colorScheme: ColorScheme.fromSwatch(
    // primarySwatch: Colors.green,
    //   primaryColorDark: const Color(0xFF232323),
    backgroundColor: AppColors.cardColor,
    // accentColor: const Color(0xff494949),
    errorColor: AppColors.errorColor,
  ).copyWith(
    // secondaryContainer: const Color(0xff06bd3d),
    // primaryContainer: const Color(0xffF9F0E1),
    // onSecondary: const Color(0xffF67D31),
    // secondary: const Color(0xffffffff),
    // outline: const Color(0xff818185),
  ),
  appBarTheme: const AppBarTheme(
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: AppColors.backgroundColor,
      statusBarIconBrightness: Brightness.light,
    ),
    color: Color(0xffffffff),
    elevation: 0,
    foregroundColor: Color(0xffF9F0E1),
    titleTextStyle: TextStyle(
      fontSize: 20,
      fontFamily: Fonts.bold,
      fontWeight: FontWeight.w700,
      color: AppColors.primaryDark,
    ),
    //  backgroundColor: secondaryColor,
    centerTitle: true,
  ),
  inputDecorationTheme: const InputDecorationTheme(
    filled: true,
    fillColor: Color(0xffF2F2F2),
    hintStyle: TextStyle(
      fontSize: 14,
      fontFamily: Fonts.regular,
    ),

  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all(AppColors.primaryLight),
      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    ),
  ),
  fontFamily: Fonts.bold,
  textTheme:  const TextTheme(
    titleLarge: TextStyle(
      fontSize: 22,
      fontFamily: Fonts.bold,
      fontWeight: FontWeight.bold,
      color: AppColors.primaryLightText,
    ),
    titleMedium: TextStyle(
      fontSize: 20,
      fontFamily: Fonts.bold,
      fontWeight: FontWeight.bold,
      color: AppColors.primaryLightText,
    ),
    titleSmall: TextStyle(
      fontSize: 18.0,
      color: AppColors.primaryLightText,
      fontFamily: Fonts.bold,
      fontWeight: FontWeight.bold,
    ),

    bodyLarge: TextStyle(
      fontSize: 16.0,
      color: AppColors.primaryLightText,
      fontFamily: Fonts.semiBold,
      fontWeight: FontWeight.w600,
    ),
    bodyMedium: TextStyle(
      fontSize: 14.0,
      color: AppColors.primaryLightText,
      fontFamily: Fonts.medium,
      fontWeight: FontWeight.w500,
    ),
    bodySmall: TextStyle(
      fontSize: 12.0,
      color: AppColors.primaryLightText,
      fontFamily: Fonts.regular,
      fontWeight: FontWeight.w400,
    ),
    displayLarge: TextStyle(
      fontSize: 18.0,
      color: AppColors.greyColor,
      fontFamily: Fonts.bold,
      fontWeight: FontWeight.w600,
    ),
    displayMedium: TextStyle(
      fontSize: 16.0,
      color: AppColors.greyColor,
      fontFamily: Fonts.medium,
      fontWeight: FontWeight.w500,
    ),
    displaySmall: TextStyle(
      fontSize: 14.0,
      color: AppColors.greyColor,
      fontFamily: Fonts.regular,
      fontWeight: FontWeight.w400,
    ),
    labelLarge: TextStyle(
      fontSize: 16.0,
      color: Colors.white,
      fontFamily: Fonts.semiBold,
      fontWeight: FontWeight.w600,
    ),
    labelMedium: TextStyle(
      fontSize: 14.0,
      color: Colors.white,
      fontFamily: Fonts.medium,
      fontWeight: FontWeight.w500,
    ),
    labelSmall: TextStyle(
      fontSize: 12.0,
      color: Colors.white,
      fontFamily: Fonts.regular,
      fontWeight: FontWeight.w400,
    ),
    headlineSmall: TextStyle(
      fontSize: 14.0,
      color: AppColors.primaryLight,
      fontFamily: Fonts.regular,
      fontWeight: FontWeight.w400,
    ),
    headlineMedium: TextStyle(
      fontSize: 16.0,
      color: AppColors.primaryLight,
      fontFamily: Fonts.medium,
      fontWeight: FontWeight.w500,
    ),
    headlineLarge: TextStyle(
      fontSize: 18.0,
      color: AppColors.primaryLight,
      fontFamily: Fonts.semiBold,
      fontWeight: FontWeight.w600,
    ),

  ),
);