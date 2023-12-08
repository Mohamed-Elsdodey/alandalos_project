import 'package:alandalos_project/Features/exams_details/presentaion/widgets/absence_screen_body.dart';
import 'package:flutter/material.dart';
class ExamsDetailsScreen extends StatelessWidget {
  const ExamsDetailsScreen({super.key, required this.subjectStudent, required this.teacherName, required this.totalDegree, required this.degreeStudent});
  final String subjectStudent,teacherName,totalDegree,degreeStudent;

  @override
  Widget build(BuildContext context) {
    return  ExamsScreenBody(
   teacherName: teacherName,
      subjectStudent: subjectStudent,
      totalDegree: totalDegree,
      degreeStudent: degreeStudent,

    );
  }
}
