import 'package:alandalos_project/Core/utils/helper.dart';
import 'package:alandalos_project/Features/absence_details/presentaion/absence_screen.dart';
import 'package:flutter/material.dart';
import '../../../home/presentation/widgets/custom_home_container.dart';
class AbsencesListView extends StatelessWidget {
  const AbsencesListView({super.key, required this.color, required this.status, required this.numberOfAbsence, required this.numberOfDelay, required this.date, required this.parentId, required this.absenceId});
  final Color color;
  final String status,numberOfAbsence,numberOfDelay,date,parentId,absenceId;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: context.screenWidth*0.03),
      child:    GestureDetector(
          onTap: (){
           Navigator.push(context, MaterialPageRoute(builder: (context) =>  AbsenceScreenDetails(
             absenceId: absenceId,
             numberOfAbsence:numberOfAbsence,
             numberOfDelay: numberOfDelay,
             status: status,
             date: date,
           ),));
          },
          child: CustomHomeContainer(
            color: color,
            height: context.screenHeight*0.22,
            width: context.screenWidth * 0.1,
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

      )
    );
  }
}
