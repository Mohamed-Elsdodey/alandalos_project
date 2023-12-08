
import 'package:alandalos_project/Features/exam_tab/model/exam_model.dart';
import 'package:alandalos_project/Features/exam_tab/presentaion/widgets/exam_tab_body.dart';
import 'package:flutter/material.dart';
class ExamTabScreen extends StatelessWidget {
  const ExamTabScreen({Key? key, required this.data, required this.parentId}) : super(key: key);
  @override
  final ExamsModel data;
  final String parentId;
  Widget build(BuildContext context) {
        return  ExamTabBody(data: data,parentId: parentId,);
  }
}
