
import '../../src/electronic_rosary/presentation/pages/add_experiments/add_experiments_page.dart';
import '../../src/electronic_rosary/presentation/pages/electronic_rosary/electronic_rosary_page.dart';
import '../../src/electronic_rosary/presentation/pages/experiments/experiments_page.dart';
import '../../src/home/presentation/pages/home_page.dart';
import '../../src/main_index.dart';
import '../../src/nav_bar/presentation/pages/main_navgation_bar.dart';
import '../../src/parties/presentation/pages/parties_page.dart';
import '../../src/splash/presentation/pages/splash_screen.dart';
import '../../src/tasks/presentation/pages/tasks/tasks_page.dart';
import '../../src/tasks/presentation/pages/tasks/tasks_screen.dart';

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
  static const String more = 'more';
  static const String settings = 'settings';
  static const String homePage = 'homePage';
  static const String partiesPage = 'partiesPage';
  static const String addExperimentsPage = 'addExperimentsPage';
  static const String experimentsPage = 'experimentsPage';
  static const String electronicRosaryPage = 'electronicRosaryPage';
  static const String splashPage = 'splashPage';
  static const String requestsPage = 'RequestsPage';
 // static const String requestDetailsPage = 'RequestDetailsPage';
  static const StringproductPage = 'productPage';
  static const String addProductPage = 'addProductPage';
  static const String categoriesPage = 'categoriesPage';
  static const String addCategoriesPage = 'addCategoriesPage';
static const String customersPage = 'customersPage';
static const String tasksPage = 'tasksPage';
  static const String aboutPage = 'aboutPage';
  static const String privacyPolicyPage = 'privacyPolicyPage';
  static const String enterPhoneNumberPage = 'enterPhoneNumberPage';
  static const String printPage = 'printPage';
  /* ====================================================================== */
  static const String productDetailsPage = 'productDetailsPage';

  static final routes = <String, Widget Function(BuildContext)>{


     homePage: (context) => HomePage(),
    splashPage: (context) => SplashPage(),
    partiesPage: (context) => PartiesPage(),
    tasksPage: (context) => TasksPage(),
    electronicRosaryPage: (context) => ElectronicRosaryPage(),
    experimentsPage: (context) => ExperimentsPage(),
    addExperimentsPage: (context) => AddExperimentsPage(),
    navigationPages: (context) => NavigationBarPage(),


  };
}
