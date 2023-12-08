import 'package:alandalos_project/Core/utils/routes/api_services_http.dart';
import 'package:alandalos_project/Features/exams_details/model/examDetailsModel.dart';
class GetExamsDetails {
  Future<ExamDetailsModel> getExamsDataDetails(String parentId,String examsId) async {
    Map<String,dynamic> data = await ApiServiceHttp().get(
      uri: 'https://alandalosschool.com/api/student/getExamsDetails/$examsId?student_id=$parentId',);
    print('the data from data services from Exams Details : $data');
    return  ExamDetailsModel.fromJson(data);
  }
}
