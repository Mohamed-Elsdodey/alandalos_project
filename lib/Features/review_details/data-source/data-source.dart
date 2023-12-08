import 'package:alandalos_project/Core/utils/routes/api_services_http.dart';
import 'package:alandalos_project/Features/review_details/model/reviewDetailsModel.dart';
class GetReviewsDetails {
  Future<ReviewDetailsModel> getReviewsDataDetails(String parentId,String reviewsId) async {
    Map<String,dynamic> data = await ApiServiceHttp().get(
      uri: 'https://alandalosschool.com/api/student/getReviewDetails/$reviewsId?student_id=$parentId',);
    print('the data from data services from Reviews Details : $data');
    return  ReviewDetailsModel.fromJson(data);
  }
}
