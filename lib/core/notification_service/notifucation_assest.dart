import 'local_notification_service.dart';

abstract class NotifucationAssest {
  static void setNotification({required String title , required String body , required int id}) async {
    NotificationService notificationService = NotificationService();
    await notificationService.showInstantNotification(
        id, title, body);
  }
}
