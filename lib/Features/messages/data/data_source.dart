import 'package:alandalos_project/Core/utils/routes/api_services_http.dart';
import '../models/message_model.dart';
class GetMessages {
  Future<MessageModel> getMessageData(String parentId) async {
    Map<String,dynamic> data = await ApiServiceHttp().get(
      uri: 'https://alandalosschool.com/api/student/getMessages?student_id=$parentId',);
    print('the data from data services from Messages : $data');
    return  MessageModel.fromJson(data);


  }
}
