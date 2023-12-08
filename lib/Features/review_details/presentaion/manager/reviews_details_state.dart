



import '../../model/reviewDetailsModel.dart';

abstract class GetReviewsDetailsState {}

class GetReviewsDetailsInitial extends GetReviewsDetailsState {}
class FeaturedRepositoryFailureReviewsDetails extends GetReviewsDetailsState {
  final List<String>? errMessage;

  FeaturedRepositoryFailureReviewsDetails(this.errMessage);
}
class FeaturedRepositorySuccessReviewsDetails extends GetReviewsDetailsState {
  final ReviewDetailsModel dataInfo;
  FeaturedRepositorySuccessReviewsDetails(this.dataInfo);
}
class FeaturedRepositoryLoadingReviewsDetails extends GetReviewsDetailsState {


}
