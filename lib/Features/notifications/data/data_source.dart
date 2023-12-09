import 'package:alandalos_project/Core/utils/routes/api_services_http.dart';
import 'package:alandalos_project/Features/notifications/model/notification_model.dart';
class GetNotification {
  Future<NotificationModel> getNotificationData(String parentId) async {
    Map<String,dynamic> data = await ApiServiceHttp().get(
      uri: 'https://alandalosschool.com/api/student/getNotifications?student_id=$parentId',);
    print('the data from data services from Notification : $data');
    return  NotificationModel.fromJson(data);


  }
}
