import 'dart:math';

import 'package:alandalos_project/Core/utils/helper.dart';
import 'package:flutter/material.dart';

import '../../../../Core/utils/constants.dart';
import '../../../../core/utils/assets.dart';
import '../../../home/presentation/widgets/custom_home_container.dart';
class ExamsScreenBody extends StatelessWidget {
  const ExamsScreenBody({super.key, required this.subjectStudent, required this.teacherName, required this.totalDegree, required this.degreeStudent});

  final String subjectStudent,teacherName,totalDegree,degreeStudent;  @override
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
          height: context.screenHeight*0.22,
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
                      subjectStudent,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: context.screenWidth*0.028,

                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      width: context.screenWidth * .009,
                    ),Text(
                      " : المواد الدراسية ",
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
                      teacherName,
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
                      " : اسم المدرس",
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
                      totalDegree,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: context.screenWidth*0.028,

                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      width: context.screenWidth * .009,
                    ), Text(
                      " : مجموع الدرجات",
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
                      degreeStudent,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: context.screenWidth*0.028,

                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      width: context.screenWidth * .009,
                    ),Text(
                      " : درجة الطالب  ",
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
