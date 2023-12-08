

import 'package:alandalos_project/Features/Absences_tab/model/absence_model.dart';

abstract class GetAbsenceState {}

class GetAbsenceInitial extends GetAbsenceState {}
class FeaturedRepositoryFailureAbsence extends GetAbsenceState {
  final List<String>? errMessage;

  FeaturedRepositoryFailureAbsence(this.errMessage);
}
class FeaturedRepositorySuccessAbsence extends GetAbsenceState {
  final AbsenceModel dataInfo;
  FeaturedRepositorySuccessAbsence(this.dataInfo);
}
class FeaturedRepositoryLoadingAbsence extends GetAbsenceState {


}
