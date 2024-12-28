import 'dart:io';

import 'package:app/core/firebase/notification_service.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get_storage/get_storage.dart';

 import 'package:timezone/data/latest_all.dart' as tz;


 import 'core/themes/light_theme.dart';
import 'core/network/base_client.dart';
import 'src/main_index.dart'; // Provides [VideoController] & [Video] etc.

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
FlutterLocalNotificationsPlugin();

Future<void> initializeNotifications() async {
  const AndroidInitializationSettings androidInitializationSettings =
  AndroidInitializationSettings('@mipmap/ic_launcher');

  const InitializationSettings initializationSettings = InitializationSettings(
    android: androidInitializationSettings,
  );

  await flutterLocalNotificationsPlugin.initialize(
    initializationSettings,
  );
}
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );
  // SystemChrome.setSystemUIOverlayStyle(
  //     const SystemUiOverlayStyle(statusBarColor: Colors.purple));

  WidgetsFlutterBinding.ensureInitialized();
  tz.initializeTimeZones(); // Ensure timezone is initialized
  await initializeNotifications();
  await configureDependencies();
  ServicesLocator().init();
  await GetStorage.init();
  injector.registerSingleton(ClientCreator(
      interceptor: HeaderInterceptor(
    accessToken: '',
  )).create());

  HttpOverrides.global = MyHttpOverrides();
  FirebaseNotification();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // FirebaseNotification firebase = FirebaseNotification();
    // firebase.initialize(context);
    return MaterialApp(
      theme: lightTheme,
      debugShowCheckedModeBanner: false,
      locale: Locale("ar"),
      navigatorKey: injector<ServicesLocator>().navigatorKey,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en'), // English, no country code
        Locale('ar'), // Arabic, no country code
      ],
      //  home: SplashScreen(widgetPage: LoginPage()),
      routes: Routes.routes,
      initialRoute: Routes.electronicRosaryPage,
    );
  }
}

