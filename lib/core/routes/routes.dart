
import '../../src/about_caf/presentation/pages/about_cafe_page.dart';
import '../../src/auth/presentation/pages/forget-password/enter_pin_code_page.dart';
import '../../src/auth/presentation/pages/forget-password/new_password_page.dart';
import '../../src/auth/presentation/pages/login/login_page.dart';
import '../../src/campaign_terms/presentation/pages/campaign_terms_page.dart';
import '../../src/digital_identity/presentation/pages/digital_identity_page.dart';
import '../../src/hajj_messages/presentation/page/details_message/details_message_page.dart';
import '../../src/hajj_messages/presentation/page/hajj_messages_page.dart';
import '../../src/hajj_transportation/presentation/pages/hajj_transportation_page.dart';
import '../../src/healthy/presentation/pages/healthy_page.dart';
import '../../src/home/presentation/pages/home/home_page.dart';
import '../../src/language/presentation/pages/change_language_page.dart';
import '../../src/live_broadcast/presentation/pages/details_live_broadcast/details_live_broadcast_page.dart';
import '../../src/live_broadcast/presentation/pages/live_broadcast_page.dart';
import '../../src/logout/presentation/pages/logout_page.dart';
import '../../src/main_index.dart';
import '../../src/nav_bar/presentation/pages/main_navgation_bar.dart';
import '../../src/notes/presentation/pages/notes_page.dart';
import '../../src/notifications/presentation/pages/notifications_page.dart';
import '../../src/photo_gallery/presentation/pages/details_photo_gallery/details_photo_gallery_page.dart';
import '../../src/photo_gallery/presentation/pages/more_photo_gallery/more_photo_gallery_page.dart';
import '../../src/photo_gallery/presentation/pages/photo_gallery_page.dart';
import '../../src/profile/presentation/pages/edit_profile_page.dart';
import '../../src/profile/presentation/pages/profile_page.dart';
import '../../src/program/presentation/pages/details_programe/details_programe_page.dart';
import '../../src/program/presentation/pages/programe_page.dart';
import '../../src/qayds/presentation/qayd_payment/pages/qayd_payment_page.dart';
import '../../src/qayds/presentation/register_qayd/pages/register_qayd_page.dart';
import '../../src/quran/presentation/pages/quran_page.dart';
import '../../src/references/presentation/pages/reference_page.dart';
import '../../src/rosary/presentation/pages/rosary_counter/rosary_counter_page.dart';
import '../../src/rosary/presentation/pages/rosary_page.dart';
import '../../src/settings/presentation/pages/about_logeste/about_logeste_page.dart';
import '../../src/settings/presentation/support/pages/support_page.dart';
import '../../src/splash/presentation/pages/introduction_page.dart';

class Routes {


  static const String intro = '/';
  static const String loginPage = 'loginUI';
  static const String editProfilePage = 'editProfilePage';
  static const String languagePage = 'language_page';
  static const String supportPage = 'supportPage';
  static const String regiserQaydPage = 'RegiserQaydPage';
  static const String qaydPaymentPage = 'qaydPaymentPage';

  static const String register = 'registerPage';
  static const String onboardingPage = 'onboardingPage';
  static const String favoritesPage = 'favoritesPage';
  static const String reportsPage = 'ReportsPage';
  static const String ordersPage = 'OrdersPage';
  static const String communityPage = 'communityPage';
  static const String submitOrderPage = 'submitOrderPage';
  static const String orderDetailsPage = 'orderDetailsPage';
  static const String changePasswordPage = 'ChangePasswordPage';

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
  static const String invoicesPage = 'invoicesPage';
  static const String detailsInvoicesPage = 'detailsInvoicesPage';
  static const String aboutCafPage = 'aboutCafPage';
  static const String programmePage = 'programmePage';
  static const String campaignTermsPage = 'campaignTermsPage';
  static const String hajjTransportationPage = 'hajjTransportationPage';
  static const String referencePage = 'referencePage';
  static const String photoGalleryPage = 'photoGalleryPage';
  static const String morePhotoGalleryPage = 'morePhotoGalleryPage';
  static const String detailsPhotoGalleryPage = 'detailsPhotoGalleryPage';
  static const String liveBroadcastPage = 'liveBroadcastPage';
  static const String detailsLiveBroadcastPage = 'detailsLiveBroadcastPage';
  static const String healthyPage = 'healthyPage';
  static const String rosaryPage = 'rosaryPage';
  static const String rosaryCounterPage = 'rosaryCounterPage';
  static const String changeLanguagePage = 'changeLanguagePage';
  static const String quranPage = 'quranPage';
  static const String detailsProgrammePage = 'detailsProgrammePage';
  static const String logoutPage = 'logoutPage';
  static const String notePage = 'notePage';
  static const String hajjMessagesPage = 'hajjMessagesPage';
  static const String detailsMessagePage = 'detailsMessagePage';
  static const String digitalIdentityPage = 'digitalIdentityPage';


  /* ====================================================================== */
  static const String productDetailsPage = 'productDetailsPage';

  static final routes = <String, Widget Function(BuildContext)>{
    intro: (context) => IntroductionPage(),
    editProfilePage: (context) => EditProfilePage(),
        loginPage: (context) => LoginPage(),
    notifications: (context) => NotificationsPage(),
    supportPage: (context) => SupportPage(),
    changePasswordPage: (context) => ChangePasswordPage(),
    regiserQaydPage: (context) => RegisterQaydPage(),
    qaydPaymentPage: (context) => QaydPaymentPage(),

    enterPinCodePage: (context) => EnterPinCodePage(),
    navigationPages: (context) => NavigationBarPage(),
    homePage: (context) => HomePage(),
    profile: (context) => ProfilePage(),
    aboutLogeste: (context) => AboutLogestePage(),
    /* ====================================================================== */
    aboutCafPage: (context) => AboutCafPage(),
    programmePage: (context) => ProgramePage(),
    campaignTermsPage: (context) => CampaignTermsPage(),
    hajjTransportationPage: (context) => HajjTransportationPage(),
    referencePage: (context) => ReferencePage(),
    photoGalleryPage: (context) => PhotoGalleryPage(),
    morePhotoGalleryPage: (context) => MorePhotoGalleryPage(),
    detailsPhotoGalleryPage: (context) => DetailsPhotoGalleryPage(),
    liveBroadcastPage: (context) => LiveBroadcastPage(),
    detailsLiveBroadcastPage: (context) => DetailsLiveBroadcastPage(),
    healthyPage: (context) => HealthyPage(),
    rosaryPage: (context) => RosaryPage(),
    rosaryCounterPage: (context) => RosaryCounterPage(),
    changeLanguagePage: (context) => ChangeLanguagePage(),
    quranPage: (context) => QuranPage(),
    detailsProgrammePage: (context) => DetailsProgramePage(),
    logoutPage: (context) => LogoutPage(),
    notePage: (context) => NotePage(),
    hajjMessagesPage: (context) => HajjMessagesPage(),
    detailsMessagePage: (context) => DetailsMessagePage(),
    digitalIdentityPage: (context) => DigitalIdentityPage(),
  };
}
