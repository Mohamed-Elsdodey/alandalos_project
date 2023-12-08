import 'package:alandalos_project/Core/utils/routes/api_services_http.dart';
import 'package:alandalos_project/Features/exam_tab/model/exam_details_model.dart';
class GetExamDetails {
  Future<ExamDetailsModel> getExamDetailsData(String parentId) async {
    Map<String,dynamic> data = await ApiServiceHttp().get(
        uri: 'https://alandalosschool.com/api/student/getExams?student_id=$parentId',);
    print('the data from data services from Exams Details : $data');
    return  ExamDetailsModel.fromJson(data);


  }
}
