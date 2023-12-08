import 'dart:math';
import 'package:flutter/material.dart';

import '../../../../Core/utils/constants.dart';
import 'absences_list_view_widget.dart';
class AbsencesListWidgets extends StatefulWidget {
  const AbsencesListWidgets({super.key});

  @override
  State<AbsencesListWidgets> createState() => _ExamListWidgetsState();
}

class _ExamListWidgetsState extends State<AbsencesListWidgets> {
  var listColor = [kChildrenContainerColor1, kChildrenContainerColor2];

  final _random = Random();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 4,
      itemBuilder: (context, index) {
        return AbsencesListView(
          color: listColor[_random.nextInt(listColor.length)],
        );
      },
      padding: const EdgeInsets.only(top: 5, right: 5),
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
    );
  }
}
