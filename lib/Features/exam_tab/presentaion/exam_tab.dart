
import 'package:alandalos_project/Features/exam_tab/model/exam_details_model.dart';
import 'package:alandalos_project/Features/exam_tab/presentaion/widgets/exam_tab_body.dart';
import 'package:flutter/material.dart';
class ExamTabScreen extends StatelessWidget {
  const ExamTabScreen({Key? key, required this.data}) : super(key: key);
  @override
  final ExamDetailsModel data;
  Widget build(BuildContext context) {
        return  ExamTabBody(data: data);
  }
}
