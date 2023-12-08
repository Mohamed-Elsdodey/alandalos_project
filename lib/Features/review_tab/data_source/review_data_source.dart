import 'package:alandalos_project/Core/utils/routes/api_services_http.dart';
import 'package:alandalos_project/Features/review_tab/model/review_model.dart';
class GetReview {
  Future<ReviewsModel> getReviewData(String parentId) async {
    Map<String,dynamic> data = await ApiServiceHttp().get(
      uri: 'https://alandalosschool.com/api/student/getReviews?student_id=$parentId',);
    print('the data from data services from Reviews Details : $data');
    return  ReviewsModel.fromJson(data);


  }
}
