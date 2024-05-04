import '../../src/auth/presentation/pages/forget-password/enter_phone_number_page.dart';
import '../../src/auth/presentation/pages/forget-password/enter_pin_code_page.dart';
import '../../src/auth/presentation/pages/forget-password/change_password_page.dart';
import '../../src/auth/presentation/pages/forget-password/forget_password_page.dart';
import '../../src/auth/presentation/pages/login/login_page.dart';
import '../../src/auth/presentation/register/pages/register_page.dart';
import '../../src/courses/presentation/details/pages/course_details_page.dart';
import '../../src/courses/presentation/details/pages/lesson_details_page.dart';
import '../../src/courses/presentation/view/pages/my_courses_page.dart';
import '../../src/departments/presentation/pages/department_page.dart';
import '../../src/favorite/presentation/pages/favorite_page.dart';
import '../../src/grades/presentation/pages/grades_page.dart';
import '../../src/home/presentation/pages/advertisement/advertisement_page.dart';
import '../../src/home/presentation/pages/home/home_page.dart';
import '../../src/courses/presentation/latest_courses/pages/latest_courses_page.dart';
import '../../src/main_index.dart';
import '../../src/nav_bar/presentation/pages/main_navgation_bar.dart';
import '../../src/notifications/presentation/pages/notifications_page.dart';
import '../../src/on_boarding/pages/onboarding_page.dart';
import '../../src/profile/presentation/pages/edit_profile_page.dart';
import '../../src/profile/presentation/pages/profile_page.dart';
import '../../src/settings/presentation/pages/about_logeste/about_logeste_page.dart';
import '../../src/splash/presentation/pages/introduction_page.dart';
import '../../src/teachers/presentation/pages/teacher_details/teacher_details_page.dart';
import '../../src/teachers/presentation/pages/teachers_page.dart';

class Routes {


  static const String intro = '/';
  static const String loginPage = 'loginUI';
  static const String editProfilePage = 'editProfilePage';

  static const String register = 'registerPage';
  static const String onboardingPage = 'onboardingPage';
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
  static const String myCoursesPage = 'myCoursesPage';
  static const String departmentPage = 'departmentPage';
  static const String latestCoursesPage = 'latestCoursesPage';
  static const String teachersPage = 'teachersPage';
  static const String teacherDetailsPage = 'teacherDetailsPage';
  static const String courseDetailsPage = 'courseDetailsPage';
  static const String lessonDetailsPage = 'lessonDetailsPage';
  static const String scoreCardPage = 'scoreCardPage';
  static const String favoritePage = 'favoritePage';
  static const String advertisementPage = 'advertisementPage';


  /* ====================================================================== */
  static const String productDetailsPage = 'productDetailsPage';

  static final routes = <String, Widget Function(BuildContext)>{
    intro: (context) => IntroductionPage(),
    onboardingPage: (context) => const OnBoardingPage(),
    register: (context) => RegisterPage(),
    enterPhoneNumberPage: (context) => EnterPhoneNumberPage(),
    courseDetailsPage: (context) => CourseDetailsPage(),
    forgotPasswordPage: (context) => ForgotPasswordPage(),
    favoritePage: (context) => FavoritePage(),
    advertisementPage: (context) => AdvertisementPage(),
    scoreCardPage: (context) => GradesPage(),
    lessonDetailsPage: (context) => LessonDetailsPage(),
    teacherDetailsPage: (context) => TeacherDetailsPage(),
    myCoursesPage: (context) => MyCoursesPage(),
    latestCoursesPage: (context) => LatestCoursesPage(),
    teachersPage: (context) => TeachersPage(),
    editProfilePage: (context) => EditProfilePage(),
    departmentPage: (context) => DepartmentPage(),
    loginPage: (context) => LoginPage(),
    notifications: (context) => NotificationsPage(),
    changePasswordPage: (context) => ChangePasswordPage(),
    enterPinCodePage: (context) => EnterPinCodePage(),
    navigationPages: (context) => NavigationBarPage(),
    homePage: (context) => HomePage(),
    profile: (context) => ProfilePage(),
    aboutPage: (context) => AboutPage(),
  };
}
