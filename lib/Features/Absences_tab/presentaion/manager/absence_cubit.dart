import 'package:alandalos_project/Features/Absences_tab/data/data_source.dart';
import 'package:alandalos_project/Features/Absences_tab/model/absence_model.dart';
import 'package:bloc/bloc.dart';
import 'absence_state.dart';

class GetAbsenceCubit extends Cubit<GetAbsenceState> {
  GetAbsenceCubit(this.getAbsence) : super(GetAbsenceInitial());
  final GetAbsence getAbsence;
  Future<void> getAllDataAbsence(String parentId) async {
    AbsenceModel data;
    data = await getAbsence.getAbsenceData(parentId);
    if(data.status == 200)
    {
      emit(FeaturedRepositorySuccessAbsence(data));
    }
    else {
      emit(FeaturedRepositoryFailureAbsence(data.message!));

    }
  }
}

