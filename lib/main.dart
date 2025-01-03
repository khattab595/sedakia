import 'dart:io';

import 'package:app/core/firebase/notification_service.dart';
import 'package:app/core/utils/storage.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get_storage/get_storage.dart';

import 'package:workmanager/workmanager.dart';
import 'core/themes/light_theme.dart';
import 'core/network/base_client.dart';
import 'src/main_index.dart'; // Provides [VideoController] & [Video] etc.

void callbackDispatcher() {
  Workmanager().executeTask((task, inputData) {
    showNotification("This is your notification");
    return Future.value(true);
  });
}


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

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  WidgetsFlutterBinding.ensureInitialized();

  await configureDependencies();
  ServicesLocator().init();
  await GetStorage.init();
  injector.registerSingleton(ClientCreator(
      interceptor: HeaderInterceptor(
    accessToken: '',
  )).create());

  HttpOverrides.global = MyHttpOverrides();
  FirebaseNotification();


 await flutterLocalNotificationsPlugin
      .resolvePlatformSpecificImplementation<
      IOSFlutterLocalNotificationsPlugin>()
      ?.requestPermissions(
    alert: true,
    badge: true,
    sound: true,
  );

  const AndroidInitializationSettings initializationSettingsAndroid =
      AndroidInitializationSettings('@mipmap/ic_launcher');

  const InitializationSettings initializationSettings =
      InitializationSettings(android: initializationSettingsAndroid);

  await flutterLocalNotificationsPlugin.initialize(initializationSettings);

  await Workmanager().initialize(callbackDispatcher);

  // Schedule daily notifications
  scheduleDailyNotifications();


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
      initialRoute: Routes.splashPage,
    );
  }
}







Future<void> showNotification(String title) async {
  const AndroidNotificationDetails androidNotificationDetails =
  AndroidNotificationDetails(
    'test_channel',
    'Test Channel',
    channelDescription: 'This is a test channel',
    importance: Importance.high,
    priority: Priority.high,
  );

  const NotificationDetails notificationDetails =
  NotificationDetails(android: androidNotificationDetails);

  await flutterLocalNotificationsPlugin.show(
    0,
    'تنبيه',
    title,
    notificationDetails,
  );
}

void scheduleDailyNotifications() {
  final now = DateTime.now();

  // Schedule for 11:00 AM
  final time11 = DateTime(now.year, now.month, now.day, 6, 0);
  final durationUntil11 = time11.isBefore(now) ? time11.add(Duration(days: 1)).difference(now) : time11.difference(now);

  Workmanager().registerPeriodicTask(
    'notification_11', // Unique task name
    'simpleTask', // Task name to match the task in the callback
    initialDelay: durationUntil11, // Delay before task executes
    inputData: <String, dynamic>{'title': 'حان الأن موعد الأوراد  المربوطة بعد صلاة الصبح'}, // Pass additional data if needed
    constraints: Constraints(
      networkType: NetworkType.not_required,
      requiresBatteryNotLow: true,
    ),
  );

  // Schedule for 12:00 PM
  final time12 = DateTime(now.year, now.month, now.day, 16, 0);
  final durationUntil12 = time12.isBefore(now) ? time12.add(Duration(days: 1)).difference(now) : time12.difference(now);

  Workmanager().registerPeriodicTask(
    'notification_12', // Unique task name
    'simpleTask', // Task name to match the task in the callback
    initialDelay: durationUntil12, // Delay before task executes
    inputData: <String, dynamic>{'title': 'حان الأن موعد الأوراد  المربوطة بعد صلاة العصر'}, // Pass additional data if needed
    constraints: Constraints(
      networkType: NetworkType.not_required,
      requiresBatteryNotLow: true,
    ),
  );
  if(KStorage.i.getTimeHoure=="" || KStorage.i.getTimeHoure==null){

  }else{
    final timeCashe = DateTime(now.year, now.month, now.day,  int.parse(KStorage.i.getTimeHoure.toString()), int.parse(KStorage.i.getTimeMinite.toString()));
    final durationCashe = time12.isBefore(now) ? timeCashe.add(Duration(days: 1)).difference(now) : timeCashe.difference(now);
    final titleCashe =  KStorage.i.getNameNot??" " ;

    Workmanager().registerPeriodicTask(
      'notification_13', // Unique task name
      'simpleTask5', // Task name to match the task in the callback
      initialDelay: durationCashe, // Delay before task executes
      inputData: <String, dynamic>{'title': titleCashe}, // Pass additional data if needed
      constraints: Constraints(
        networkType: NetworkType.not_required,
        requiresBatteryNotLow: true,
      ),
    );
  }

}



