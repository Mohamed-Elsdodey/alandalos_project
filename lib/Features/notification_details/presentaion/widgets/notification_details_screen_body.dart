import 'package:alandalos_project/Core/utils/helper.dart';
import 'package:alandalos_project/Features/Absences_tab/presentaion/manager/absence_cubit.dart';
import 'package:alandalos_project/Features/exam_tab/presentaion/manager/exam_details_cubit.dart';
import 'package:alandalos_project/Features/message_details/presentaion/message_details_screen.dart';
import 'package:alandalos_project/Features/review_tab/presentaion/manager/reviews_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../Core/utils/constants.dart';
import '../../../../core/utils/assets.dart';
import '../../../home/presentation/widgets/custom_home_container.dart';

class NotificationDetailsScreenBody extends StatefulWidget {
  const NotificationDetailsScreenBody({
    super.key,
    required this.foreignId,
    required this.notificationId,
    required this.parentId,
    required this.title,
    required this.text,
    required this.date,
    required this.type,
  });

  final String title, text, date, type;
  final String foreignId, notificationId, parentId;
  @override
  State<NotificationDetailsScreenBody> createState() =>
      _NotificationDetailsScreenBodyState();
}

class _NotificationDetailsScreenBodyState
    extends State<NotificationDetailsScreenBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
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
          backgroundColor: kPrimaryColorWhite,
          title: Text(
            "تفاصيل الاشعار  ",
            style: TextStyle(fontSize: context.screenWidth * 0.05),
          )),
      body: Column(children: [
        CircleAvatar(
          backgroundColor: kBackGroundColor,
          radius: context.screenHeight * .09,
          child: Image.asset(
            AssetsData.schoolIcon,
          ),
        ),
        SizedBox(
          height: context.screenHeight * 0.02,
        ),
        GestureDetector(
          onTap: () {
            if (widget.type == "review") {
              BlocProvider.of<GetReviewCubit>(context)
                  .getAllDataReviews(widget.parentId);
            } else if (widget.type == "exam") {
              BlocProvider.of<ExamCubit>(context).getAllData(widget.parentId);
            } else if (widget.type == "message") {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MessageDetailsScreen(
                          title: widget.title,
                          text: widget.text,
                          date: widget.date)));
            } else if (widget.type == "absence") {
              BlocProvider.of<GetAbsenceCubit>(context)
                  .getAllDataAbsence(widget.parentId );
            } else {}
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomHomeContainer(
              height: context.screenHeight * .11,
              width: context.screenWidth,
              color: Colors.white,
              child: ListTile(
                title: Text(
                  widget.title,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                      fontSize: 15, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  widget.text,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 15,
                  ),
                ),
                trailing: Text(
                  widget.date,
                  style: const TextStyle(
                      fontSize: 12, fontWeight: FontWeight.bold),
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
        ),
      ]),
    );
  }
}
