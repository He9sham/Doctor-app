import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:timezone/data/latest.dart' as tz;
import 'package:timezone/timezone.dart' as tz;

class NotificationService {
  FlutterLocalNotificationsPlugin localNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  Future<void> init() async {
    const AndroidInitializationSettings androidInitializationSettings =
        AndroidInitializationSettings('@drawable/launch_background');

    const DarwinInitializationSettings darwinInitializationSettings =
        DarwinInitializationSettings(
      requestAlertPermission: true,
      requestBadgePermission: true,
      requestSoundPermission: true,
    );

    const InitializationSettings initializationSettings =
        InitializationSettings(
      android: androidInitializationSettings,
      iOS: darwinInitializationSettings,
    );

    await localNotificationsPlugin.initialize(
      initializationSettings,
      onDidReceiveNotificationResponse: _onDidReceiveNotificationResponse,
    );

    tz.initializeTimeZones();
  }

  void _onDidReceiveNotificationResponse(NotificationResponse details) {}

  Future<NotificationDetails> notificationDetails() async {
    const AndroidNotificationDetails androidNotificationDetails =
        AndroidNotificationDetails(
      'channel_Id',
      'channel_Name',
      channelDescription: 'description',
      importance: Importance.max,
      priority: Priority.max,
      playSound: true,
    );
    const DarwinNotificationDetails darwinNotificationDetails =
        DarwinNotificationDetails();
    const NotificationDetails platformChannelSpecifics = NotificationDetails(
      android: androidNotificationDetails,
      iOS: darwinNotificationDetails,
    );
    return platformChannelSpecifics;
  }

  // respons with a bottum
  Future<void> showInstantNotification(
      int id, String title, String body) async {
    await localNotificationsPlugin.show(
        id, title, body, await notificationDetails());
  }

  Future<void> showZonedScheduledNotifications(
      int id, String title, String body, String payload) async {
    DateTime date = DateTime.now().add(const Duration(days: 1));
    tz.TZDateTime dateTime = tz.TZDateTime.from(date, tz.local);
    await localNotificationsPlugin.zonedSchedule(
        id, title, body, dateTime, await notificationDetails(),
        uiLocalNotificationDateInterpretation:
            UILocalNotificationDateInterpretation.absoluteTime);
  }
}
