
import 'package:alandalos_project/Features/Absences_tab/model/absence_model.dart';
import 'package:alandalos_project/Features/Absences_tab/presentaion/widgets/absences_tab_body.dart';
import 'package:flutter/material.dart';
class AbsencesTabScreen extends StatelessWidget {
  const AbsencesTabScreen({super.key, required this.data, required this.parentId});
  final AbsenceModel data;
  final String parentId;
  @override
  Widget build(BuildContext context) {
        return  AbsencesTabBody(data:data,parentId: parentId);
  }
}
