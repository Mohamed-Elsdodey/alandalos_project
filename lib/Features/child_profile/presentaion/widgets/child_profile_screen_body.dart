import 'package:alandalos_project/Core/utils/helper.dart';
import 'package:alandalos_project/Features/Absences_tab/model/absence_model.dart';
import 'package:alandalos_project/Features/Absences_tab/presentaion/manager/absence_cubit.dart';
import 'package:alandalos_project/Features/Absences_tab/presentaion/manager/absence_state.dart';
import 'package:alandalos_project/Features/exam_tab/presentaion/exam_tab.dart';
import 'package:alandalos_project/Features/exam_tab/presentaion/manager/exam_details_cubit.dart';
import 'package:alandalos_project/Features/exam_tab/presentaion/manager/exam_details_state.dart';
import 'package:alandalos_project/Features/messages/presentation/manager/message_cubit.dart';
import 'package:alandalos_project/Features/messages/presentation/manager/message_state.dart';
import 'package:alandalos_project/Features/messages/presentation/screens/messages_screen.dart';
import 'package:alandalos_project/Features/notifications/presentation/manager/notification_cubit.dart';
import 'package:alandalos_project/Features/notifications/presentation/manager/notification_state.dart';
import 'package:alandalos_project/Features/review_tab/presentaion/manager/reviews_cubit.dart';
import 'package:alandalos_project/Features/review_tab/presentaion/manager/reviews_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/utils/assets.dart';
import '../../../Absences_tab/presentaion/absences_tab.dart';
import '../../../account_page/presentation/views/widgets/icon_box.dart';
import '../../../notifications/presentation/screens/notification_screen.dart';
import '../../../review_tab/presentaion/reviews_tab.dart';
import 'contant_card.dart';

class ChildProfileScreenBody extends StatefulWidget {
  const ChildProfileScreenBody(
      {super.key,
      required this.parentId,
      required this.namStudent,
      required this.classStudent});
  final String parentId, namStudent, classStudent;


  @override
  State<ChildProfileScreenBody> createState() => _ChildProfileScreenBodyState();
}

class _ChildProfileScreenBodyState extends State<ChildProfileScreenBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.transparent,
              pinned: true,
              snap: true,
              floating: true,
              title: getAppBar(),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) => buildBody(),
                childCount: 1,
              ),
            )
          ],
        ));
  }

  Widget getAppBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "ملف الطفل",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: context.screenWidth * 0.05,
                  fontWeight: FontWeight.w600),
            ),
          ],
        )),
        BlocListener<NotificationCubit, NotificationState>(
          listener: (context, state) {
            if (state is FeaturedRepositorySuccessNotification) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>  NotificationsScreen(

                        parentId: widget.parentId,
                        dataNotification: state.dataInfo),
                  ));
            } else if (state is FeaturedRepositoryFailureNotification) {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                content: Text("error"),
              ));
            }
          },
          child: GestureDetector(
              onTap: () {
                BlocProvider.of<NotificationCubit>(context)
                    .getAllData(widget.parentId);
              },
              child: IconBox(
                child: Image.asset("assets/icons/bell_icon.png",
                    width: 20, height: 20),
              )),
        )
      ],
    );
  }

  Widget buildBody() {
    return SingleChildScrollView(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
      child: Column(
        children: [
          Column(
            children: <Widget>[
              Column(
                children: [
                  CircleAvatar(
                    radius: context.screenHeight * .06,
                    backgroundImage: const AssetImage(AssetsData.childImage),
                  ),
                  SizedBox(
                    height: context.screenHeight * 0.02,
                  ),
                  Text(
                    widget.namStudent,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: context.screenHeight * 0.01,
                  ),
                  Text(
                    widget.classStudent,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: context.screenWidth * 0.03,
                    ),
                  ),
                  SizedBox(
                    height: context.screenHeight * 0.03,
                  ),
                ],
              ),
              allTasksWithChild()
            ],
          ),
        ],
      ),
    );
  }

  Column allTasksWithChild() {
    return Column(
      children: [
        SizedBox(
          height: context.screenHeight,
          child: GridView(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, crossAxisSpacing: 8, mainAxisSpacing: 8),
            children: [
              BlocListener<GetReviewCubit, GetReviewsState>(
                listener: (context, state) {
                  if (state is FeaturedRepositorySuccessReviews) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ReviewsTabScreen(
                              data: state.dataInfo, parentId: widget.parentId),
                        ));
                  } else if (state is FeaturedRepositoryFailureReviews) {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text("error"),
                    ));
                  }
                },
                child: GestureDetector(
                  onTap: () {
                    BlocProvider.of<GetReviewCubit>(context)
                        .getAllDataReviews(widget.parentId);
                  },
                  child: ContantCardChild(
                    text: "تحفيز",
                    image: Image.asset(
                        width: context.screenWidth * 0.15,
                        height: context.screenHeight * 0.15,
                        "assets/images/review.png"),
                  ),
                ),
              ),
              BlocListener<ExamCubit, ExamDetailsState>(
                listener: (context, state) {
                  if (state is FeaturedRepositorySuccessExams) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ExamTabScreen(
                              data: state.dataInfo, parentId: widget.parentId),
                        ));
                  } else if (state is FeaturedRepositoryFailureExams) {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text("error"),
                    ));
                  } else {
                    const CircularProgressIndicator();
                  }
                },
                child: GestureDetector(
                  onTap: () {
                    BlocProvider.of<ExamCubit>(context)
                        .getAllData(widget.parentId);
                  },
                  child: ContantCardChild(
                    text: "الاختبارات",
                    image: Image.asset(
                        width: context.screenWidth * 0.15,
                        height: context.screenHeight * 0.15,
                        "assets/images/exam.png"),
                  ),
                ),
              ),
              BlocListener<GetAbsenceCubit, GetAbsenceState>(
                listener: (context, state) {
                  if (state is FeaturedRepositorySuccessAbsence) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AbsencesTabScreen(

                              data: state.dataInfo, parentId: widget.parentId),
                        ));
                  } else if (state is FeaturedRepositoryFailureAbsence) {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text("error"),
                    ));
                  }
                },
                child: GestureDetector(
                  onTap: () {
                    BlocProvider.of<GetAbsenceCubit>(context)
                        .getAllDataAbsence(widget.parentId);
                  },
                  child: ContantCardChild(
                    text: "الغياب",
                    image: Image.asset(
                        width: context.screenWidth * 0.15,
                        height: context.screenHeight * 0.15,
                        "assets/images/students.png"),
                  ),
                ),
              ),
              ContantCardChild(
                text: "درجات الطالب",
                image: Image.asset(
                    width: context.screenWidth * 0.15,
                    height: context.screenHeight * 0.15,
                    "assets/images/immigration.png"),
              ),
              BlocListener<MessageCubit, MessageState>(
                listener: (context, state) {
                  if (state is FeaturedRepositorySuccessMessages) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              MessagesScreen(data: state.dataInfo ),
                        ));
                  } else if (state is FeaturedRepositoryFailureMessages) {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text("error"),
                    ));
                  }
                },
                child: GestureDetector(
                  onTap: () {
                    BlocProvider.of<MessageCubit>(context)
                        .getAllData(widget.parentId);
                  },
                  child: ContantCardChild(
                    text: "الرسايل",
                    image: Image.asset(
                        width: context.screenWidth * 0.15,
                        height: context.screenHeight * 0.15,
                        "assets/images/message.png"),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
