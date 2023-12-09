
import 'package:alandalos_project/Core/utils/helper.dart';
import 'package:flutter/material.dart';
import '../../../../Core/utils/constants.dart';
import '../../../../core/utils/assets.dart';
import '../../../home/presentation/widgets/custom_home_container.dart';
class MessageDetailsScreenBody extends StatelessWidget {
  const MessageDetailsScreenBody({super.key, required this.title, required this.text, required this.date, });

  final String title,text,date;  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      backgroundColor: Colors.white,
  appBar:
  AppBar(
      automaticallyImplyLeading: false,
      centerTitle: true,
      elevation: 0,
      leading: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Padding(
          padding:
          EdgeInsets.symmetric(horizontal: context.screenWidth * 0.02),
          child: const Icon(Icons.arrow_back, color: kPrimaryColorBlack),
        ),
      ),
      actions: [
        Padding(
          padding:
          EdgeInsets.symmetric(horizontal: context.screenWidth * 0.02),
          child: GestureDetector(
            onTap: () {
              // BlocProvider.of<BottomNavCubit>(context)
              //     .updateBottomNavIndex(kNotificationsScreen);
            },
            child: Image.asset(
              AssetsData.bellIcon,
            ),
          ),
        ),
      ],
      backgroundColor: kPrimaryColorWhite,
      title: Text(
        "تفاصيل الرسالة ",
        style: TextStyle(fontSize: context.screenWidth * 0.04),
      )),
body: Column(


    children: [
      CircleAvatar(
        backgroundColor: kBackGroundColor,
        radius: context.screenHeight * .09,
        child: Image.asset(

          AssetsData.schoolIcon,
        ),
      ),
      SizedBox(height: context.screenHeight*0.02,),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CustomHomeContainer(
            height: context.screenHeight * .1,
            width: context.screenWidth,
            color: Colors.white,
            child: ListTile(
              title:  Text(
                title,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
              subtitle:  Text(
                text,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 10,
                ),
              ),
              trailing:  Text(
                date,
                style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
              leading: CircleAvatar(
                backgroundColor: kBackGroundColor,
                radius: context.screenHeight * .03,
                child: Image.asset(
                  AssetsData.schoolIcon,
                ),
              ),
            ),
          ),
        ),
    ]),
    );
  }
}
