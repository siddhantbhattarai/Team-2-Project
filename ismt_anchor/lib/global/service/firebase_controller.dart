import 'dart:convert';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get/get.dart';
import 'package:ismt_anchor/routes/get_routes.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FirebaseController {
  final firebasemessaging = FirebaseMessaging.instance;
  final _androidchannel = AndroidNotificationChannel(
    "Important channel",
    "Notification",
    description: "This is the notification",
    importance: Importance.high,
  );
  final localnotification = FlutterLocalNotificationsPlugin();

  Future initLocalnotification() async {
    final android = AndroidInitializationSettings("@drawable/ic_launcher");
    final ios = DarwinInitializationSettings(requestAlertPermission: true,requestBadgePermission: true,requestSoundPermission: true,onDidReceiveLocalNotification: (id, title, body, payload) {
      final message = RemoteMessage.fromMap(jsonDecode(payload.toString()));
      handlemessage(message);
    },);
    final settings = InitializationSettings(android: android, iOS: ios);

    await localnotification.initialize(settings, onDidReceiveNotificationResponse: (payload) {
      final message = RemoteMessage.fromMap(jsonDecode(payload.toString()));
      handlemessage(message);
    });

    // final platform = localnotification.resolvePlatformSpecificImplementation<AndroidFlutterLocalNotificationsPlugin>();
    // await platform!.createNotificationChannel(_androidchannel);
  }

  Future<void> handlebackgroundMessage(RemoteMessage? message) async {
    if (message == null) {
      return;
    } else {
      print(message.notification);
    }
  }

  void handlemessage(RemoteMessage? message) {
    if (message == null) return;
    Get.offNamed(Routes.notificationScreen);
  }

  Future initpushnotification() async {
    await firebasemessaging.setForegroundNotificationPresentationOptions(alert: true, badge: true, sound: true);
    firebasemessaging.getInitialMessage().then(handlemessage);
    FirebaseMessaging.onMessageOpenedApp.listen(handlemessage);
    FirebaseMessaging.onMessage.listen((message) {
      final notification = message.notification;
      print(message);
      if (notification == null) return;
      localnotification.show(
        notification.hashCode,
        notification.title,
        notification.body,
        NotificationDetails(
          android: AndroidNotificationDetails(
            _androidchannel.id,
            _androidchannel.name,
            channelDescription: _androidchannel.description,
            icon: '@drawable/ic_launcher',
          ),
        ),
        payload: jsonEncode(message.toMap()),
      );
    });
  }

  Future<void> initnotification() async {
   
    await firebasemessaging.requestPermission();
    final fcmtoken = await firebasemessaging.getToken();
    print("hel +$fcmtoken");
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString("fcmtoken", fcmtoken!);
    initpushnotification();
    initLocalnotification();
  }
}
