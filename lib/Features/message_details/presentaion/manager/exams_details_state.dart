


import 'package:alandalos_project/Features/exams_details/model/examDetailsModel.dart';

abstract class GetExamsDetailsState {}

class GetExamsDetailsInitial extends GetExamsDetailsState {}
class FeaturedRepositoryFailureExamsDetails extends GetExamsDetailsState {
  final List<String>? errMessage;

  FeaturedRepositoryFailureExamsDetails(this.errMessage);
}
class FeaturedRepositorySuccessExamsDetails extends GetExamsDetailsState {
  final ExamDetailsModel dataInfo;
  FeaturedRepositorySuccessExamsDetails(this.dataInfo);
}
class FeaturedRepositoryLoadingExamsDetails extends GetExamsDetailsState {


}
