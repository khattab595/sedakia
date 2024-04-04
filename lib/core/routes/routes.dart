import 'package:flutter/cupertino.dart';

import '../../navigation_pages.dart';
import '../../src/auth/presentation/pages/forget-password/enter_phone_number_page.dart';
import '../../src/auth/presentation/pages/forget-password/enter_pin_code_page.dart';
import '../../src/auth/presentation/pages/forget-password/new_password_page.dart';
import '../../src/auth/presentation/pages/login/login_page.dart';
import '../../src/auth/presentation/pages/sign-up/register_page.dart';
import '../../src/categories/presentation/pages/categories_page.dart';
import '../../src/community/presentation/pages/community_page.dart';
import '../../src/favorites/presentation/pages/favorites_page.dart';
import '../../src/home/presentation/pages/home/home_page.dart';
import '../../src/notifications/presentation/pages/notifications_page.dart';
import '../../src/products/presentation/product/pages/products_page.dart';
import '../../src/products/presentation/product/pages/search_products_page.dart';
import '../../src/profile/presentation/pages/profile_page.dart';
import '../../src/settings/presentation/pages/about_logeste/about_logeste_page.dart';
import '../../src/settings/presentation/pages/change-language/chang_language_page.dart';
import '../../src/settings/presentation/pages/settings_page.dart';
import '../../src/stores/presentation/pages/stores_page.dart';
import '../../src/wallet/presentation/pages/wallet_page.dart';
import '../../src/wallet/presentation/payment_methods/pages/add_new_method/add_payment_method_page.dart';
import '../../src/wallet/presentation/payment_methods/pages/payment_methods_page.dart';
import '../../src/wallet/presentation/widgets/wallet_history/wallet_history_page.dart';

class Routes {
  static const String languagePage = 'language_page';
  static const String intro = '/';
  static const String loginPage = 'loginUI';
  static const String register = 'registerPage';
  static const String onboardingPage = 'onboardingPage';
  static const String favoritesPage = 'favoritesPage';
  static const String ordersPage = 'OrdersPage';
  static const String communityPage = 'communityPage';
  static const String submitOrderPage = 'submitOrderPage';
  static const String orderDetailsPage = 'orderDetailsPage';
  static const String searchProductsPage = 'searchProductsPage';

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
  static const String changeLanguage = 'changeLanguagePage';
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
    loginPage: (context) => LoginPage(),
    register: (context) => RegisterPage(),
    walletPage: (context) => WalletPage(),
    communityPage: (context) => CommunityPage(),
    favoritesPage: (context) => FavoritesPage(),
    enterPhoneNumberPage: (context) => EnterPhoneNumberPage(),
    enterPinCodePage: (context) => EnterPinCodePage(),
    newPasswordPage: (context) => NewPasswordPage(),
    navigationPages: (context) => NavigationPages(),
    homePage: (context) => HomePage(),
    notifications: (context) => NotificationsPage(),
    categoriesPage: (context) => CategoriesPage(),
    productsPage: (context) => ProductsPage(),
    settings: (context) => SettingsPage(),
    changeLanguage: (context) => ChangLanguagePage(),
    profile: (context) => ProfilePage(),
    aboutLogeste: (context) => AboutLogestePage(),
    /* ====================================================================== */
    storesPage: (context) => StoresPage(),
    searchProductsPage: (context) => SearchProductsPage(),
    walletHistoryPage: (context) => WalletHistoryPage(),
    paymentMethodsPage: (context) => PaymentMethodsPage(),
    addPaymentMethodPage: (context) => AddPaymentMethodPage(),
  };
}
