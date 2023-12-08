import 'package:alandalos_project/Features/child_profile/presentaion/widgets/child_profile_screen_body.dart';
import 'package:flutter/material.dart';
class ChildProfileScreen extends StatelessWidget {
  const ChildProfileScreen({super.key, required this.parentId, required this.classStudent, required this.namStudent});
final String parentId,classStudent,namStudent;
  @override
  Widget build(BuildContext context) {
    return  ChildProfileScreenBody(parentId:parentId,classStudent: classStudent,namStudent: namStudent,);
  }
}
