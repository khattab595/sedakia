import '../../src/auth/presentation/pages/forget-password/enter_phone_number_page.dart';
import '../../src/auth/presentation/pages/forget-password/enter_pin_code_page.dart';
import '../../src/auth/presentation/pages/forget-password/change_password_page.dart';
import '../../src/auth/presentation/pages/forget-password/forget_password_page.dart';
import '../../src/auth/presentation/pages/login/login_page.dart';
import '../../src/home/presentation/pages/home_page.dart';
import '../../src/main_index.dart';
import '../../src/nav_bar/presentation/pages/main_navgation_bar.dart';
import '../../src/notifications/presentation/pages/notifications_page.dart';
import '../../src/profile/presentation/pages/edit_profile_page.dart';
import '../../src/profile/presentation/pages/profile_page.dart';
import '../../src/splash/presentation/pages/splash_page.dart';

class Routes {


  static const String intro = '/';
  static const String loginPage = 'loginUI';
  static const String editProfilePage = 'editProfilePage';

  static const String register = 'registerPage';
  static const String favoritesPage = 'favoritesPage';
  static const String changePasswordPage = 'ChangePasswordPage';

  static const String enterPhoneNumberPage = 'enterPhoneNumberPage';
  static const String enterPinCodePage = 'enterPinCodePage';
  static const String newPasswordPage = 'newPasswordPage';
  static const String navigationPages = 'navigationPages';
  static const String notifications = 'notifications';
  static const String profile = 'profile';
  static const String settings = 'settings';
  static const String aboutPage = 'aboutLogestePage';
  static const String homePage = 'homePage';
  static const String forgotPasswordPage = 'forgotPasswordPage';
  static const String splashPage = 'splashPage';


  /* ====================================================================== */
  static const String productDetailsPage = 'productDetailsPage';

  static final routes = <String, Widget Function(BuildContext)>{
    splashPage: (context) => SplashPage(),
    enterPhoneNumberPage: (context) => EnterPhoneNumberPage(),
    forgotPasswordPage: (context) => ForgotPasswordPage(),
    editProfilePage: (context) => EditProfilePage(),
    loginPage: (context) => LoginPage(),
    notifications: (context) => NotificationsPage(),
    changePasswordPage: (context) => ChangePasswordPage(),
    enterPinCodePage: (context) => EnterPinCodePage(),
    navigationPages: (context) => NavigationBarPage(),
    homePage: (context) => HomePage(),
    profile: (context) => ProfilePage(),
  };
}
