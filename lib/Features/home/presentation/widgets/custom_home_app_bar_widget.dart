import 'package:alandalos_project/core/utils/helper.dart';
import 'package:flutter/material.dart';
import '../../../../core/utils/assets.dart';
import '../../../../core/utils/gaps.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({super.key, required this.tapHandler, required this.nameParent});
  final Function? tapHandler;
  final String nameParent;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      actionsIconTheme: const IconThemeData(color: Colors.white),
      toolbarHeight: context.screenHeight * .1,
      backgroundColor: Colors.white,
      elevation: 0,
      title: Align(
        alignment: Alignment.topRight,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              style: TextStyle(fontSize: context.screenWidth*0.04),
              "اهلا وسهلا",
            ),
            Gaps.vGap4,
             Text(
               style: TextStyle(fontSize: context.screenWidth*0.04),
              nameParent,
            )
          ],
        ),
      ),

      actions:  [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: CircleAvatar(
            radius: context.screenHeight*0.03,
            backgroundImage: AssetImage(AssetsData.introImage1),
          ),
        ),
      ],
    );
  }
}
