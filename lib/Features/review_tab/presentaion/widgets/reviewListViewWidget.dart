import 'package:alandalos_project/Core/utils/helper.dart';
import 'package:flutter/material.dart';

import '../../../home/presentation/widgets/custom_home_container.dart';
class ReviewListView extends StatelessWidget {
  const ReviewListView({super.key, required this.color});
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: context.screenWidth*0.03),
      child: CustomHomeContainer(
        color: color,
        height: context.screenHeight*0.38,
        width: context.screenWidth * 0.1,
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
                    "تميز ",
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
                    "(1) ",
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
                    "(4) ",
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
                    "(27) ",
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
                    "(3) ",
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
                    " : المادة الدراسية",
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
                    "عبد الرحمن",
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
                    "14 - 5 - 2023 ",
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
    );
  }
}
