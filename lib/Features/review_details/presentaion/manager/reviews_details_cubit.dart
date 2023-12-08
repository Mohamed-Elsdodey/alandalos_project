import 'package:alandalos_project/Features/review_details/data-source/data-source.dart';
import 'package:bloc/bloc.dart';
import '../../model/reviewDetailsModel.dart';
import 'reviews_details_state.dart';

class GetReviewsDetailsCubit extends Cubit<GetReviewsDetailsState> {
  GetReviewsDetailsCubit(this.getReviewsDetails) : super(GetReviewsDetailsInitial());
  final GetReviewsDetails getReviewsDetails;
  Future<void> getAllDataReviewsDetails(String parentId,String ReviewsId) async {
    ReviewDetailsModel data;
    data = await getReviewsDetails.getReviewsDataDetails(parentId,ReviewsId);
    if(data.status == 200)
    {
      emit(FeaturedRepositorySuccessReviewsDetails(data));
    }
    else {
      emit(FeaturedRepositoryFailureReviewsDetails(data.message!));

    }
  }
}

