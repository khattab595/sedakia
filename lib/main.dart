import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'firebase_options.dart';
 import 'package:app/src/settings/presentation/bloc/locale_cubit.dart';
import 'package:app/src/settings/presentation/bloc/locale_state.dart';


import 'core/firebase/notification_service.dart';
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

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent));

  await configureDependencies();
  FirebaseMessaging messaging = FirebaseMessaging.instance;
  await messaging.requestPermission(
    alert: true,
    announcement: false,
    badge: true,
    carPlay: false,
    criticalAlert: false,
    provisional: false,
    sound: true,
  );
  ServicesLocator().init();
  injector.registerSingleton(ClientCreator(
      interceptor: HeaderInterceptor(
    accessToken: '',
  )).create());

  HttpOverrides.global = MyHttpOverrides();



  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    FirebaseNotification firebase = FirebaseNotification();
    firebase.initialize(context);
    return BlocProvider(
      create: (BuildContext context) => LocaleCubit()..getLanguageData(),
      child: BlocBuilder<LocaleCubit, LocalState>(
        builder: (context, state) {
          return state.isLoading
              ? LoadingView()
              : MaterialApp(
                  theme: lightTheme,
                  debugShowCheckedModeBanner: false,
                  locale:  Locale(state.language),
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
                 initialRoute:  Routes.splashPage,
                );
        },
      ),
    );
  }
}


