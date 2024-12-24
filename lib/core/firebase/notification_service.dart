import 'dart:convert';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

import '../../src/main_index.dart';

const AndroidNotificationChannel channel = AndroidNotificationChannel(
    'selfieNotifications', "Selfie Notifications",
    enableVibration: true,
    importance: Importance.high,
    playSound: true,
    showBadge: true,
    sound: RawResourceAndroidNotificationSound('selfie_notification'),
    description: "Notifications for Selfie users");

final FlutterLocalNotificationsPlugin flutterLocalNotificationPlugin =
    FlutterLocalNotificationsPlugin();

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  print('onBackgroundMessage: ${message.data}');
  await Firebase.initializeApp();
  await FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
      alert: true, badge: true, sound: true);
}

class FirebaseNotification {
  String? firebaseNotificationToken;

  bool get mounted => false;

  initialize(BuildContext context) async {
    await Firebase.initializeApp();
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

    FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

    await flutterLocalNotificationPlugin
        .resolvePlatformSpecificImplementation<
        AndroidFlutterLocalNotificationsPlugin>()
        ?.createNotificationChannel(channel);
    var initializationSettingsAndroid =
    const AndroidInitializationSettings('@mipmap/ic_launcher');
    var initializeSettingIOS = DarwinInitializationSettings();

    var initializationSettings = InitializationSettings(
        android: initializationSettingsAndroid, iOS: initializeSettingIOS);

    flutterLocalNotificationPlugin.initialize(
      initializationSettings,
      // onSelectNotification: (payload) {
      //   print('onSelectNotification: $payload');
      //   if (payload != null) {
      //     final data = jsonDecode(payload);
      //     setRouteFromNotificationData(context: context, data: data);
      //   }
      // },
    );

    final NotificationAppLaunchDetails? notificationAppLaunchDetails =
    await flutterLocalNotificationPlugin.getNotificationAppLaunchDetails();
    String? payload =
        notificationAppLaunchDetails?.notificationResponse?.payload;
    if (payload != null) {
      if (mounted) return;
      //    setRouteFromNotificationData(context: context, data: data);
    }

    await FirebaseMessaging.instance
        .setForegroundNotificationPresentationOptions(
        alert: true, badge: true, sound: true);

    // await getToken();
    FirebaseMessaging.instance.getInitialMessage().then((message) async {
      print('getInitialMessage: $message');
      print('getInitialMessage data: ${message?.data}');
      // if (message != null) {
      //   routeFromNotificationMessage(context, message);
      // }
    });

    FirebaseMessaging.onMessage.listen((RemoteMessage message) async {
      print('onMessage: ${message.messageId}');
      RemoteNotification? notification = message.notification;
      // AndroidNotification? android = message.notification?.android;
      if (notification != null) {
        flutterLocalNotificationPlugin.show(notification.hashCode,
            notification.title, notification.body, _notificationDetails(),
            payload: jsonEncode(message.data));
      }
    });

    FirebaseMessaging.onMessageOpenedApp.listen((message) async {
      print('onMessageOpenedApp: ${message.messageId}');
    });
  }


  static NotificationDetails _notificationDetails() {
    print('_notificationDetails');
    return NotificationDetails(
        android: AndroidNotificationDetails(channel.id, channel.name,
            channelDescription: channel.description,
            importance: Importance.max,
            priority: Priority.high),
        iOS: const DarwinNotificationDetails());
  }

  subscribeToTopic(String topic) async {
    await FirebaseMessaging.instance.subscribeToTopic(topic);
  }

}