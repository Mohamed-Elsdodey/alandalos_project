import 'package:alandalos_project/Core/utils/routes/api_services_http.dart';
import 'package:alandalos_project/Features/Absences_tab/model/absence_model.dart';
class GetAbsence {
  Future<AbsenceModel> getAbsenceData(String parentId) async {
    Map<String,dynamic> data = await ApiServiceHttp().get(
      uri: 'https://alandalosschool.com/api/student/getAbsences?student_id=$parentId',);
    print('the data from data services from Absence  : $data');
    return  AbsenceModel.fromJson(data);


  }
}
