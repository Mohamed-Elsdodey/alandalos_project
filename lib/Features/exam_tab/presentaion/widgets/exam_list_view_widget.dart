import 'package:alandalos_project/Core/utils/helper.dart';
import 'package:alandalos_project/Features/exams_details/presentaion/manager/exams_details_cubit.dart';
import 'package:alandalos_project/Features/exams_details/presentaion/manager/exams_details_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../exams_details/presentaion/exams_screen.dart';
import '../../../home/presentation/widgets/custom_home_container.dart';
class ExamListView extends StatelessWidget {
  const ExamListView({super.key, required this.color, required this.subjectStudent, required this.teacherName, required this.totalDegree, required this.degreeStudent, required this.examsId, required this.parentId});
  final Color color;
  final String subjectStudent,teacherName,totalDegree,degreeStudent,examsId,parentId;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: context.screenWidth*0.03),
      child: BlocListener<GetExamsDetailsCubit,GetExamsDetailsState>(
        listener: (context, state) {
          if(state is FeaturedRepositorySuccessExamsDetails)
            {
              Navigator.push(context, MaterialPageRoute(builder: (context) => ExamsDetailsScreen(
                  totalDegree: state.dataInfo.data!.degreeOfExam.toString(),
                  subjectStudent: state.dataInfo.data!.category!.title.toString(),
                  teacherName: state.dataInfo.data!.teacher!.name.toString(),
                  degreeStudent: state.dataInfo.data!.degreeOfStudent.toString()),));
            }
        },
        child: GestureDetector(
          onTap: (){
            BlocProvider.of<GetExamsDetailsCubit>(context).getAllDataExamsDetails(parentId, examsId);
          },
          child: CustomHomeContainer(
            color: color,
            height: context.screenHeight*0.22,
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
      ),
    );
  }
}
