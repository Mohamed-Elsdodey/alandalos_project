import 'dart:math';

import 'package:alandalos_project/Core/utils/helper.dart';
import 'package:flutter/material.dart';

import '../../../../Core/utils/constants.dart';
import '../../../../core/utils/assets.dart';
import '../../../home/presentation/widgets/custom_home_container.dart';
class ReviewsScreenBody extends StatelessWidget {
  const ReviewsScreenBody({super.key, required this.status, required this.points, required this.balance, required this.totalPoints, required this.rankClass, required this.subject, required this.date, required this.teacherName});

  final String status,points,balance,totalPoints,rankClass,subject,date,teacherName;
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
          "assets/images/exam.png"),
      SizedBox(height: context.screenHeight*0.02,),
      Padding(
        padding: const EdgeInsets.only(right: 16,left: 16),
        child:CustomHomeContainer(
          color:  listColor[_random.nextInt(listColor.length)],
          height: context.screenHeight*0.33,
          width: context.screenWidth * 0.9,
          child:
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: context.screenWidth*0.03,vertical: context.screenHeight*0.03),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      status,
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
                      ": حالة الطالب ",
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
                      "($points) ",
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
                      ": النقاط  ",
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
                      "($balance) ",
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
                      " :  رصد العقوبات اصبح",
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
                      "($totalPoints) ",
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
                      " : الرصيد الاجمالي  ",
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
                      "($rankClass) ",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: context.screenWidth*0.028,

                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      width: context.screenWidth * .009,
                    ),Text(
                      " : الترتيب علي الفصل  ",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: context.screenWidth*0.03,
                        fontWeight: FontWeight.w700,
                      ),
                    ),

                  ],
                ),
                SizedBox(height: context.screenHeight*0.011,),
                Row(                mainAxisAlignment: MainAxisAlignment.end,

                  children: [
                    Text(
                      "اللغة الانجليزية",
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
                      " : $subject",
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
                      "$teacherName",
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
                      " : اسم مدرس المادة ",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: context.screenWidth*0.03,
                        fontWeight: FontWeight.w700,
                      ),
                    ),

                  ],
                ),
                SizedBox(height: context.screenHeight*0.011,),
                Row(                mainAxisAlignment: MainAxisAlignment.end,

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
                    ), Text(
                      ":  التاريخ ",
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
