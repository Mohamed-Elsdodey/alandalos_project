import 'dart:math';

import 'package:alandalos_project/Core/utils/helper.dart';
import 'package:flutter/material.dart';

import '../../../../Core/utils/constants.dart';
import '../../../../core/utils/assets.dart';
import '../../../home/presentation/widgets/custom_home_container.dart';
class AbsenceScreenDetailsBody extends StatelessWidget {
  const AbsenceScreenDetailsBody({super.key, required this.status, required this.numberOfAbsence, required this.numberOfDelay, required this.date});

  final String status,numberOfAbsence,numberOfDelay,date;
  @override
  Widget build(BuildContext context) {
    var listColor = [kChildrenContainerColor1, kChildrenContainerColor2];
    final _random = Random();
    return  Scaffold(
      backgroundColor: Colors.white,
  appBar:     AppBar(
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
        "تفاصيل الغياب ",
        style: TextStyle(fontSize: context.screenWidth * 0.04),
      )),
body: Column(


    children: [
      Image.asset(
          height:context.screenHeight*0.3,
          "assets/images/students.png"),
      SizedBox(height: context.screenHeight*0.02,),
      Padding(
        padding: const EdgeInsets.only(right: 16,left: 16),
        child: CustomHomeContainer(
          color: listColor[_random.nextInt(listColor.length)],
          height: context.screenHeight*0.22,
          width: double.infinity,
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: context.screenWidth*0.03,vertical: context.screenHeight*0.03),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "($status ) ",
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: context.screenWidth*0.028,

                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      width: context.screenWidth * .009,
                    ),
                    Text(
                      " : الحالة ",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: context.screenWidth*0.03,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),

                SizedBox(height: context.screenHeight*0.011,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,

                  children: [
                    Text(
                      "($numberOfDelay ) ",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: context.screenWidth*0.028,

                        fontWeight: FontWeight.w700,
                      ),
                    ),

                    SizedBox(
                      width: context.screenWidth * .009,
                    ),
                    Text(
                      "عدد ايام التاخير  ",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: context.screenWidth*0.03,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),

                SizedBox(height: context.screenHeight*0.011,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "($numberOfAbsence ) ",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: context.screenWidth*0.028,

                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      width: context.screenWidth * .009,
                    ),
                    Text(
                      ":  عدد ايام الغياب  ",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: context.screenWidth*0.03,
                        fontWeight: FontWeight.w700,
                      ),
                    ),

                  ],
                ),

                SizedBox(height: context.screenHeight*0.011,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "$date ",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: context.screenWidth*0.028,

                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      width: context.screenWidth * .009,
                    ),  Text(
                      ": التاريخ  ",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: context.screenWidth*0.03,
                        fontWeight: FontWeight.w700,
                      ),
                    ),

                  ],
                ),

              ],
            ),
          ),
        ),
      ),
    ]),
    );
  }
}
