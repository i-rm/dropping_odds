import 'package:dropping_odds/models/notice_model.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:provider/provider.dart';
import 'dropping_odds.dart';
import 'package:shared_preferences/shared_preferences.dart';


const AndroidNotificationChannel channel = AndroidNotificationChannel(
    'high_importance_channel', // id
    'High Importance Notifications', // title
    'This channel is used for important notifications.', // description
    importance: Importance.high,
    playSound: true);

final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
FlutterLocalNotificationsPlugin();



Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  print('A bg message just showed up :  ${message.data["url"]}');
  final prefs = await SharedPreferences.getInstance();
  final urls = prefs.getString('urls') ?? 0;
  final joined = urls.toString() + "<=>" + message.data["url"];
  prefs.setString('urls', joined);
}



Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();


  await flutterLocalNotificationsPlugin
      .resolvePlatformSpecificImplementation<AndroidFlutterLocalNotificationsPlugin>()
      ?.createNotificationChannel(channel);

  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

  runApp(
    ChangeNotifierProvider(
      create: (context) => noticeModel(),
      child: MyApp(),
    ),
  );
}
