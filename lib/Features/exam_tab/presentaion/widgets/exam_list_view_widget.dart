import 'package:alandalos_project/Core/utils/helper.dart';
import 'package:alandalos_project/Features/exams_details/presentaion/exams_screen.dart';
import 'package:flutter/material.dart';
import '../../../home/presentation/widgets/custom_home_container.dart';
class ExamListView extends StatelessWidget {
  const ExamListView({super.key, required this.color, required this.subjectStudent, required this.teacherName, required this.totalDegree, required this.degreeStudent, required this.examsId, required this.parentId});
  final Color color;
  final String subjectStudent,teacherName,totalDegree,degreeStudent,examsId,parentId;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: context.screenWidth*0.03),
      child: GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => ExamsDetailsScreen(
              totalDegree:totalDegree,
              subjectStudent:subjectStudent,
              teacherName: teacherName,
              degreeStudent: degreeStudent),));
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
    );
  }
}
