import 'package:alandalos_project/Core/utils/helper.dart';
import 'package:alandalos_project/Features/review_details/presentaion/manager/reviews_details_cubit.dart';
import 'package:alandalos_project/Features/review_details/presentaion/manager/reviews_details_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../home/presentation/widgets/custom_home_container.dart';
import '../../../review_details/presentaion/review_details_screen.dart';
class ReviewListView extends StatelessWidget {
  const ReviewListView({super.key, required this.color, required this.status, required this.points, required this.balance, required this.totalPoints, required this.rankClass, required this.subject, required this.date, required this.teacherName, required this.ReviewsId, required this.parentId});
  final Color color;
  final String status,points,balance,totalPoints,rankClass,subject,date,teacherName,ReviewsId,parentId;
  @override
  Widget build(BuildContext context) {
    return BlocListener<GetReviewsDetailsCubit,GetReviewsDetailsState>(
      listener: (context, state) {
        if(state is FeaturedRepositorySuccessReviewsDetails){
          Navigator.push(context, MaterialPageRoute(builder: (context) => ReviewsDetailsScreen(
            balance: state.dataInfo.data!.balance.toString(),
            points: state.dataInfo.data!.points.toString(),
            rankClass: state.dataInfo.data!.roomRanking.toString(),
            subject: state.dataInfo.data!.category!.title.toString(),
            totalPoints: state.dataInfo.data!.totalPoints.toString(),
            date: state.dataInfo.data!.date.toString(),
            teacherName: state.dataInfo.data!.teacher!.name.toString(),
            status: state.dataInfo.data!.type.toString(),),));
        }
      },
      child: GestureDetector(
        onTap: (){
          BlocProvider.of<GetReviewsDetailsCubit>(context).getAllDataReviewsDetails(parentId, ReviewsId);
        },
        child: Padding(
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
      ),
    );
  }
}
