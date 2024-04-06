
import '../../src/auth/presentation/pages/forget-password/enter_phone_number_page.dart';
import '../../src/auth/presentation/pages/forget-password/enter_pin_code_page.dart';
import '../../src/auth/presentation/pages/forget-password/new_password_page.dart';
import '../../src/auth/presentation/pages/login/login_page.dart';
import '../../src/auth/presentation/pages/sign-up/register_page.dart';
import '../../src/home/presentation/pages/home/home_page.dart';
import '../../src/main_index.dart';
import '../../src/nav_bar/presentation/pages/main_navgation_bar.dart';
import '../../src/notifications/presentation/pages/notifications_page.dart';
import '../../src/profile/presentation/pages/edit_profile_page.dart';
import '../../src/profile/presentation/pages/profile_page.dart';
import '../../src/settings/presentation/pages/about_logeste/about_logeste_page.dart';
import '../../src/settings/presentation/pages/change-language/chang_language_page.dart';
import '../../src/settings/presentation/pages/settings_page.dart';
import '../../src/settings/presentation/support/pages/support_page.dart';
import '../../src/wallet/presentation/pages/wallet_page.dart';
import '../../src/wallet/presentation/payment_methods/pages/add_new_method/add_payment_method_page.dart';
import '../../src/wallet/presentation/payment_methods/pages/payment_methods_page.dart';
import '../../src/wallet/presentation/widgets/wallet_history/wallet_history_page.dart';

class Routes {


  static const String intro = '/';
  static const String loginPage = 'loginUI';
  static const String editProfilePage = 'editProfilePage';
  static const String languagePage = 'language_page';
  static const String supportPage = 'supportPage';

  static const String register = 'registerPage';
  static const String onboardingPage = 'onboardingPage';
  static const String favoritesPage = 'favoritesPage';
  static const String ordersPage = 'OrdersPage';
  static const String communityPage = 'communityPage';
  static const String submitOrderPage = 'submitOrderPage';
  static const String orderDetailsPage = 'orderDetailsPage';
  static const String changePasswordPage = 'ChangePasswordPage';
  static const String changeLanguagePage = 'changeLanguagePage';

  static const String enterPhoneNumberPage = 'enterPhoneNumberPage';
  static const String enterPinCodePage = 'enterPinCodePage';
  static const String newPasswordPage = 'newPasswordPage';
  static const String navigationPages = 'navigationPages';
  static const String notifications = 'notifications';
  static const String categoriesPage = 'categoriesPage';
  static const String taskDetails = 'taskDetails';
  static const String shipmentsTabsPage = 'shipmentsTabsPage';
  static const String shipmentDetails = 'shipmentDetails';
  static const String profile = 'profile';
  static const String support = 'support';
  static const String operations = 'operations';
  static const String productsPage = 'productsPage';
  static const String walletPage = 'wallet';
  static const String academy = 'academy';
  static const String settings = 'settings';
  static const String aboutLogeste = 'aboutLogestePage';
  static const String homePage = 'homePage';
  static const String qrCodePage = 'QrCodePage';
  static const String complaintsDetailsPage = 'complaintsDetailsPage';
  static const String addComplaintPage = 'addComplaintPage';
  static const String captainsPage = 'captainsPage';
  static const String shipmentsCaptainTabsPage = 'shipmentsCaptainTabsPage';
  static const String orderDetailsCommentsPage = 'orderDetailsCommentsPage';
  static const String storesPage = 'storesPage';
  static const String walletHistoryPage = 'walletHistoryPage';
  static const String paymentMethodsPage = 'paymentMethodsPage';
  static const String addPaymentMethodPage = 'addPaymentMethodPage';

  /* ====================================================================== */
  static const String productDetailsPage = 'productDetailsPage';

  static final routes = <String, Widget Function(BuildContext)>{
    editProfilePage: (context) => EditProfilePage(),
        loginPage: (context) => LoginPage(),
    notifications: (context) => NotificationsPage(),
    supportPage: (context) => SupportPage(),
    settings: (context) => SettingsPage(),
    changePasswordPage: (context) => ChangePasswordPage(),


    register: (context) => RegisterPage(),
    walletPage: (context) => WalletPage(),
    enterPhoneNumberPage: (context) => EnterPhoneNumberPage(),
    enterPinCodePage: (context) => EnterPinCodePage(),
    navigationPages: (context) => NavigationBarPage(),
    homePage: (context) => HomePage(),
    changeLanguagePage: (context) => ChangLanguagePage(),
    profile: (context) => ProfilePage(),
    aboutLogeste: (context) => AboutLogestePage(),
    /* ====================================================================== */

    walletHistoryPage: (context) => WalletHistoryPage(),
    paymentMethodsPage: (context) => PaymentMethodsPage(),
    addPaymentMethodPage: (context) => AddPaymentMethodPage(),
  };
}
