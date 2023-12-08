

import 'package:alandalos_project/Features/review_tab/model/review_model.dart';

abstract class GetReviewsState {}

class GetReviewsInitial extends GetReviewsState {}
class FeaturedRepositoryFailureReviews extends GetReviewsState {
  final List<String>? errMessage;

  FeaturedRepositoryFailureReviews(this.errMessage);
}
class FeaturedRepositorySuccessReviews extends GetReviewsState {
  final ReviewsModel dataInfo;
  FeaturedRepositorySuccessReviews(this.dataInfo);
}
class FeaturedRepositoryLoadingReviews extends GetReviewsState {


}
