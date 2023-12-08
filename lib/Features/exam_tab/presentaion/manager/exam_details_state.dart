

import 'package:alandalos_project/Features/exam_tab/model/exam_details_model.dart';

abstract class ExamDetailsState {}

class ExamDetailsInitial extends ExamDetailsState {}
class FeaturedRepositoryFailureExams extends ExamDetailsState {
  final List<String>? errMessage;

  FeaturedRepositoryFailureExams(this.errMessage);
}
class FeaturedRepositorySuccessExams extends ExamDetailsState {
  final ExamDetailsModel dataInfo;
  FeaturedRepositorySuccessExams(this.dataInfo);
}
class FeaturedRepositoryLoadingExams extends ExamDetailsState {


}
