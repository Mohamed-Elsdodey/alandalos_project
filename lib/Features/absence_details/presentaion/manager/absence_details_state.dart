

import 'package:alandalos_project/Features/absence_details/model/absenceDetailsModel.dart';

abstract class GetAbsenceDetailsState {}

class GetAbsenceDetailsInitial extends GetAbsenceDetailsState {}
class FeaturedRepositoryFailureAbsenceDetails extends GetAbsenceDetailsState {
  final List<String>? errMessage;

  FeaturedRepositoryFailureAbsenceDetails(this.errMessage);
}
class FeaturedRepositorySuccessAbsenceDetails extends GetAbsenceDetailsState {
  final AbsenceDetailsModel dataInfo;
  FeaturedRepositorySuccessAbsenceDetails(this.dataInfo);
}
class FeaturedRepositoryLoadingAbsenceDetails extends GetAbsenceDetailsState {


}
