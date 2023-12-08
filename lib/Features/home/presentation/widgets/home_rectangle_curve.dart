import 'package:alandalos_project/Core/utils/helper.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/constants.dart';

class HomeRectangleCurve extends StatelessWidget {
  const HomeRectangleCurve({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.screenWidth * .033,
      height: context.screenHeight * .042,
      decoration: ShapeDecoration(
        color: kRectangleCurveColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
            bottomLeft: Radius.circular(
               30,
            ),
            bottomRight: Radius.circular(
             30 ,
            ),
          ),
        ),
      ),
    );
  }
}
