import 'package:alandalos_project/Features/absence_details/presentaion/widgets/absence_screen_body.dart';
import 'package:flutter/material.dart';
class AbsenceScreenDetails extends StatelessWidget {
  const AbsenceScreenDetails({super.key, required this.status, required this.numberOfAbsence, required this.numberOfDelay, required this.date, required this.absenceId});
  final String status,numberOfAbsence,numberOfDelay,date,absenceId;

  @override
  Widget build(BuildContext context) {
    return  AbsenceScreenDetailsBody(
      date: date,
      status: status,
      numberOfDelay: numberOfDelay,
      numberOfAbsence: numberOfAbsence,

    );
  }
}
