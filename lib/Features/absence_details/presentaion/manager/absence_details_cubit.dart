import 'package:alandalos_project/Features/Absences_tab/model/absence_model.dart';
import 'package:alandalos_project/Features/absence_details/data-source/data-source.dart';
import 'package:alandalos_project/Features/absence_details/model/absenceDetailsModel.dart';
import 'package:bloc/bloc.dart';
import 'absence_details_state.dart';

class GetAbsenceDetailsCubit extends Cubit<GetAbsenceDetailsState> {
  GetAbsenceDetailsCubit(this.getAbsenceDetails) : super(GetAbsenceDetailsInitial());
  final GetAbsenceDetails getAbsenceDetails;

  Future<void> getAllDataAbsence(String parentId, String absenceId) async {

    AbsenceDetailsModel data;
    data = await getAbsenceDetails.getAbsenceDataDetails(parentId,absenceId);

    if(data.status == 200)
    {
      emit(FeaturedRepositorySuccessAbsenceDetails(data));
    }
    else {
      emit(FeaturedRepositoryFailureAbsenceDetails(data.message!));

    }
  }
}

