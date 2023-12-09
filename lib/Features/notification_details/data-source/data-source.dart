import 'package:alandalos_project/Core/utils/routes/api_services_http.dart';

import '../model/notificationDetailsModel.dart';
class GetNotificationDetails {
  Future<NotificationDetailsModel> getNotificationDataDetails(String parentId,String notificationId) async {
    Map<String,dynamic> data = await ApiServiceHttp().get(
      uri: 'https://alandalosschool.com/api/student/getNotificationDetails/$notificationId?student_id=$parentId',);
    print('the data from data services from Notification Details : $data');

    return  NotificationDetailsModel.fromJson(data);
  }
}
