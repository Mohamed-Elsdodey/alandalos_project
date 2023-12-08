import 'package:alandalos_project/core/utils/helper.dart';
import 'package:flutter/material.dart';
import '../../../../core/utils/assets.dart';
import '../../../../core/utils/gaps.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({super.key, required this.tapHandler, required this.nameParent});
  final Function tapHandler;
  final String nameParent;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      actionsIconTheme: const IconThemeData(color: Colors.white),
      toolbarHeight: context.screenHeight * .1,
      backgroundColor: Colors.white,
      elevation: 0,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            style: TextStyle(fontSize: context.screenWidth*0.05),
            "اهلا وسهلا",
          ),
          Gaps.vGap4,
           Text(
             style: TextStyle(fontSize: context.screenWidth*0.05),
            nameParent,
          )
        ],
      ),
      leading: GestureDetector(
        onTap: () {
          tapHandler();
        },
        child: Image.asset(
          AssetsData.bellIcon,
        ),
      ),
      actions: const [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage: AssetImage(AssetsData.introImage1),
          ),
        ),
      ],
    );
  }
}
