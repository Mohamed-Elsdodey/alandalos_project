import 'package:alandalos_project/Core/utils/routes/api_services_http.dart';
import '../model/absenceDetailsModel.dart';
class GetAbsenceDetails {
  Future<AbsenceDetailsModel> getAbsenceDataDetails(String parentId,String absenceId) async {
    Map<String,dynamic> data = await ApiServiceHttp().get(
      uri: 'https://alandalosschool.com/api/student/getAbsencesDetails/$absenceId?student_id=$parentId',);
    print('the data from data services from Absence Details : $data');
    return  AbsenceDetailsModel.fromJson(data);
  }
}
