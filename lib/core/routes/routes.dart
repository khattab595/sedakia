import '../../src/auth/presentation/pages/forget-password/enter_pin_code_page.dart';
import '../../src/auth/presentation/pages/forget-password/change_password_page.dart';
import '../../src/auth/presentation/pages/login/login_page.dart';
 import '../../src/auth/presentation/pages/login/login_page.dart';
import '../../src/categories/presentation/pages/add/add_categories_page.dart';
import '../../src/categories/presentation/pages/view/categories_page.dart';
import '../../src/home/presentation/pages/home_page.dart';
import '../../src/main_index.dart';
import '../../src/nav_bar/presentation/pages/main_navgation_bar.dart';
import '../../src/profile/presentation/pages/profile_page.dart';
import '../../src/requests/presentation/details/pages/request_details_page.dart';
import '../../src/requests/presentation/view/pages/requests_page.dart';
import '../../src/settings/presentation/pages/change-language/chang_language_page.dart';
import '../../src/splash/presentation/pages/splash_screen.dart';
  import '../../src/product/presentation/pages/add/add_product_page.dart';
import '../../src/product/presentation/pages/view/product_page.dart';
import '../../src/profile/presentation/pages/profile_page.dart';
 import '../../src/settings/presentation/pages/change-language/chang_language_page.dart';
 import '../../src/splash/presentation/pages/splash_screen.dart';

class Routes {
  static const String intro = '/';
  static const String loginPage = 'loginUI';

  static const String register = 'registerPage';
  static const String favoritesPage = 'favoritesPage';
  static const String changePasswordPage = 'ChangePasswordPage';
  static const String changLanguagePage = 'ChangLanguagePage';

  static const String enterPinCodePage = 'enterPinCodePage';
  static const String newPasswordPage = 'newPasswordPage';
  static const String navigationPages = 'navigationPages';
  static const String profile = 'profile';
  static const String settings = 'settings';
  static const String homePage = 'homePage';
  static const String splashPage = 'splashPage';
  static const String requestsPage = 'RequestsPage';
  static const String requestDetailsPage = 'RequestDetailsPage';
   static const String productPage = 'productPage';
   static const String addProductPage = 'addProductPage';
   static const String categoriesPage = 'categoriesPage';
   static const String addCategoriesPage = 'addCategoriesPage';


  /* ====================================================================== */
  static const String productDetailsPage = 'productDetailsPage';

  static final routes = <String, Widget Function(BuildContext)>{
    splashPage: (context) => SplashPage(),
    loginPage: (context) => LoginPage(),
    changePasswordPage: (context) => ChangePasswordPage(),
    enterPinCodePage: (context) => EnterPinCodePage(),
    navigationPages: (context) => NavigationBarPage(),
    homePage: (context) => HomePage(),
    profile: (context) => ProfilePage(),
    changLanguagePage: (context) => ChangLanguagePage(),
    requestsPage: (context) => RequestsPage(),
    requestDetailsPage: (context) => RequestDetailsPage(),
    productPage: (context) => ProductPage(),
    addProductPage: (context) => AddProductPage(),
    categoriesPage: (context) => CategoriesPage(),
    addCategoriesPage: (context) => AddCategoriesPage(),
   };
}
