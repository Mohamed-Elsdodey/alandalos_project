import 'package:alandalos_project/Core/utils/helper.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/constants.dart';
class ContantCardChild extends StatelessWidget {
  const ContantCardChild({
    super.key, required this.text, required this.image,
  });
  final String text;
  final Widget image;
  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 3,

        color:kPrimaryColorWhite,
        shadowColor:  const Color(0xFFCBE6FC),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16)),
        child: Column(children: [
          image,
          Text(text,
            style: TextStyle(
                color: textColor,
                fontSize: context.screenWidth*.04,
                fontWeight: FontWeight.w500
            ),
          ),],)//SizedBox
    );
  }
}