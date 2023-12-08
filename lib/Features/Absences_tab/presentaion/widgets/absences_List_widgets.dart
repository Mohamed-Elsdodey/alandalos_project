import 'dart:math';
import 'package:alandalos_project/Features/Absences_tab/model/absence_model.dart';
import 'package:flutter/material.dart';

import '../../../../Core/utils/constants.dart';
import 'absences_list_view_widget.dart';
class AbsencesListWidgets extends StatefulWidget {
  const AbsencesListWidgets({super.key, required this.data, required this.parentId});
  final AbsenceModel data;
  final String parentId;
  @override
  State<AbsencesListWidgets> createState() => _ExamListWidgetsState();
}

class _ExamListWidgetsState extends State<AbsencesListWidgets> {
  var listColor = [kChildrenContainerColor1, kChildrenContainerColor2];

  final _random = Random();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.data.data!.length,
      itemBuilder: (context, index) {
        return AbsencesListView(
          parentId: widget.parentId,
          absenceId: widget.data.data![index].id.toString(),
          date: widget.data.data![index].date.toString(),
          numberOfAbsence: widget.data.data![index].absenceDay.toString(),
          numberOfDelay: widget.data.data![index].delayDay.toString(),
          status: widget.data.data![index].type.toString(),
          color: listColor[_random.nextInt(listColor.length)],
        );
      },
      padding: const EdgeInsets.only(top: 5, right: 5),
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
    );
  }
}
