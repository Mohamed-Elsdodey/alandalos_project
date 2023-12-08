import 'package:alandalos_project/Features/absence_details/presentaion/widgets/absence_screen_body.dart';
import 'package:flutter/material.dart';
class AbsenceScreen extends StatelessWidget {
  const AbsenceScreen({super.key, required this.status, required this.numberOfAbsence, required this.numberOfDelay, required this.date});
  final String status,numberOfAbsence,numberOfDelay,date;

  @override
  Widget build(BuildContext context) {
    return  AbsenceScreenBody(
      date: date,
      status: status,
      numberOfDelay: numberOfDelay,
      numberOfAbsence: numberOfAbsence,

    );
  }
}
