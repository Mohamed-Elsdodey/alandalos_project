import 'package:alandalos_project/Features/exam_tab/data/data_source.dart';
import 'package:alandalos_project/Features/exam_tab/model/exam_details_model.dart';
import 'package:bloc/bloc.dart';
import 'exam_details_state.dart';

class ExamDetailsCubit extends Cubit<ExamDetailsState> {
  ExamDetailsCubit(this.getExamDetails) : super(ExamDetailsInitial());
  final GetExamDetails getExamDetails;
  Future<void> getAllData(String parentId) async {
    ExamDetailsModel data;
    data = await getExamDetails.getExamDetailsData(parentId);
    if(data.status == 200)
    {
      emit(FeaturedRepositorySuccessExams(data));
    }
    else {
      emit(FeaturedRepositoryFailureExams(data.message!));

    }
  }
}

