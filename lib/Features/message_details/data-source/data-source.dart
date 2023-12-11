import 'package:alandalos_project/Core/utils/routes/api_services_http.dart';
import 'package:alandalos_project/Features/message_details/model/message_details_model.dart';
class GetMessageDetails {
  Future<MessageDetailsModel> getMessageDataDetails(String parentId,String messageId) async {
    Map<String,dynamic> data = await ApiServiceHttp().get(
      uri: 'https://alandalosschool.com/api/student/getMessageDetails/$messageId?student_id=$parentId',);
    print('the data from data services from message Details : $data');
    return  MessageDetailsModel.fromJson(data);
  }
}
