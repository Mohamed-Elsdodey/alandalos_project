import 'dart:math';

import 'package:alandalos_project/Features/Absences_tab/model/absence_model.dart';
import 'package:alandalos_project/Features/auth/login_screen/model/login_model.dart';
import 'package:flutter/material.dart';
import '../../../../core/utils/constants.dart';
import 'home_children_list_item_widget.dart';

// ignore: must_be_immutable
class HomeChildrenListWidget extends StatelessWidget {
  HomeChildrenListWidget({super.key, required this.data});

  final Data data;
  var listColor = [kChildrenContainerColor1, kChildrenContainerColor2];

  final _random = Random();

  @override
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: data.students!.length,
      itemBuilder: (context, index) {
        return HomeChildrenListItemWidget(

          parentId: data.students![index].id.toString(),
          imageStudent: data.students![index].image.toString(),
          rankClass: data.students![index].roomRank!.toString(),
          rankLine: data.students![index].rowRank!.toString(),
          rankSchool: data.students![index].schoolRank!.toString(),
          nameStudent: data.students![index].name!,
          classStudent: data.students![index].room!.title!,
          color: listColor[_random.nextInt(listColor.length)],
        );
      },
      padding: const EdgeInsets.only(top: 20, right: 5),
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
    );
  }
}
