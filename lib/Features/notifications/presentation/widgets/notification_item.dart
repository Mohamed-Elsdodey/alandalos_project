import 'package:alandalos_project/Features/absence_details/presentaion/absence_screen.dart';
import 'package:alandalos_project/Features/exams_details/presentaion/exams_screen.dart';
import 'package:alandalos_project/Features/notification_details/presentaion/manager/exams_details_cubit.dart';
import 'package:alandalos_project/Features/notification_details/presentaion/manager/exams_details_state.dart';
import 'package:alandalos_project/core/utils/helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/utils/assets.dart';
import '../../../../core/utils/constants.dart';
import '../../../notification_details/presentaion/notification_details_screen.dart';
import '../../../review_details/presentaion/review_details_screen.dart';

class NotificationItemWidget extends StatelessWidget {
  const NotificationItemWidget({super.key,  this.hasBorder = true, required this.title, required this.text, required this.date, required this.notificationId, required this.parentId, required this.foreignId});
  final bool hasBorder ;
  final String title,text,date,notificationId,parentId,foreignId;

  @override
  Widget build(BuildContext context) {
    return BlocListener<GetNotificationDetailsCubit,GetNotificationDetailsState>(
      listener: (context, state) {
        if(state is FeaturedRepositorySuccessNotificationDetails)
          {

              if(state.dataInfo.data!.type == "review"){
               Navigator.push(context, MaterialPageRoute(builder: (context) => const ReviewsDetailsScreen(date: "",balance: "",points: "",rankClass: "2",status: "",subject: "",teacherName: "",totalPoints: "12"),));
              }
              else if(state.dataInfo.data!.type == "exam"){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const ExamsDetailsScreen(
                  teacherName: "", totalDegree: "",degreeStudent: "",

                  subjectStudent: '',),));

              }
              else if(state.dataInfo.data!.type == "message"){
                Navigator.push(context, MaterialPageRoute(builder: (context) => NotificationDetailsScreen(notificationDetailsData: state.dataInfo,parentId: parentId,notificationId: notificationId,foreignId: foreignId),));

              }
              else if (state.dataInfo.data!.type == "absence"){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const AbsenceScreenDetails(absenceId: "",status: "status",date: "",numberOfAbsence: "",numberOfDelay: "",),));

              }
              else {

              }
          }
      },
      child: GestureDetector(
        onTap: (){

          BlocProvider.of<GetNotificationDetailsCubit>(context).getAllDataNotificationDetails(parentId, notificationId,foreignId);
        },
        child: Padding(
          padding:  EdgeInsets.only(bottom: context.screenHeight *0.01),
          child: Container(
            height: context.screenHeight*0.15,
            padding: const EdgeInsets.all(7),
            decoration: BoxDecoration(
              color: kPrimaryColorWhite,
                borderRadius: BorderRadius.circular(10),
                border: hasBorder ? Border.all(color: Colors.black) : null),
            child: ListTile(
              trailing: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(date),
                  ),
                ],
              ),
              leading: CircleAvatar(
                backgroundColor: const Color(0xffE8E7E7),
                radius: context.screenHeight * .03,
                child: Image.asset(
                  AssetsData.bellIcon,
                  color: kPrimaryColor,
                ),
              ),
              title:  Text(
                title,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    color:  const Color(0xFF6C6A6A),
                    fontSize: context.screenWidth*0.03,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 0.42,
                    height: 2),
              ),
              subtitle:  Text(
                text,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: TextStyle(
                    color: const Color(0xFF6C6A6A),
                    fontSize: context.screenWidth*0.03,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 0.36,
                    height: 2),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
