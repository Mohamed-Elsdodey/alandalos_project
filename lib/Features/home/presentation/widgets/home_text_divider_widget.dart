import 'package:flutter/material.dart';

import '../../../../core/utils/gaps.dart';
import 'home_rectangle_curve.dart';

class HomeTextDivider extends StatelessWidget {
  const HomeTextDivider({
    super.key,
    required this.rowText,
  });
  final String rowText;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [

        Text(
          rowText,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        const HomeRectangleCurve(),
        Gaps.hGap16,
      ],
    );
  }
}
