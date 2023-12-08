import 'package:alandalos_project/Features/review_tab/data_source/review_data_source.dart';
import 'package:alandalos_project/Features/review_tab/model/review_model.dart';
import 'package:bloc/bloc.dart';
import 'reviews_state.dart';

class GetReviewCubit extends Cubit<GetReviewsState> {
  GetReviewCubit(this.getReview) : super(GetReviewsInitial());
  final GetReview getReview;
  Future<void> getAllDataReviews(String parentId) async {
    ReviewsModel data;
    data = await getReview.getReviewData(parentId);
    if(data.status == 200)
    {
      emit(FeaturedRepositorySuccessReviews(data));
    }
    else {
      emit(FeaturedRepositoryFailureReviews(data.message!));

    }
  }
}

