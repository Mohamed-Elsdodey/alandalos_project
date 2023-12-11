import 'package:alandalos_project/Features/exams_details/data-source/data-source.dart';
import 'package:alandalos_project/Features/exams_details/model/examDetailsModel.dart';
import 'package:bloc/bloc.dart';
import 'exams_details_state.dart';

class GetExamsDetailsCubit extends Cubit<GetExamsDetailsState> {
  GetExamsDetailsCubit(this.getExamsDetails) : super(GetExamsDetailsInitial());
  final GetExamsDetails getExamsDetails;
  Future<void> getAllDataExamsDetails(String parentId,String examsId) async {
    ExamDetailsModel data;
    data = await getExamsDetails.getExamsDataDetails(parentId,examsId);
    if(data.status == 200)
    {
      emit(FeaturedRepositorySuccessExamsDetails(data));
    }
    else {
      emit(FeaturedRepositoryFailureExamsDetails(data.message!));

    }
  }
}

