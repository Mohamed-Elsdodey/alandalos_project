import 'dart:math';
import 'package:alandalos_project/Features/exam_tab/model/exam_model.dart';
import 'package:flutter/material.dart';
import '../../../../Core/utils/constants.dart';
import 'exam_list_view_widget.dart';
class ExamListWidgets extends StatelessWidget {
   ExamListWidgets({super.key, required this.data});
  final ExamsModel data;
  var listColor = [kChildrenContainerColor1, kChildrenContainerColor2];

  final _random = Random();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: data.data!.length,
      itemBuilder: (context, index) {
        return
          ExamListView(
            degreeStudent: data.data![index].degreeOfStudent.toString(),
            subjectStudent: data.data![index].category!.title.toString(),
            teacherName: data.data![index].teacher!.name!,
            totalDegree: data.data![index].degreeOfExam!.toString(),
            color: listColor[_random.nextInt(listColor.length)
            ],
          );
      },
      padding: const EdgeInsets.only(top: 5, right: 5),
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
    );
  }
}
