import 'package:alandalos_project/Core/utils/helper.dart';
import 'package:alandalos_project/Features/Absences_tab/presentaion/manager/absence_cubit.dart';
import 'package:alandalos_project/Features/Absences_tab/presentaion/manager/absence_state.dart';
import 'package:alandalos_project/Features/exam_tab/presentaion/exam_tab.dart';
import 'package:alandalos_project/Features/exam_tab/presentaion/manager/exam_details_cubit.dart';
import 'package:alandalos_project/Features/exam_tab/presentaion/manager/exam_details_state.dart';
import 'package:alandalos_project/Features/review_tab/presentaion/manager/reviews_cubit.dart';
import 'package:alandalos_project/Features/review_tab/presentaion/manager/reviews_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../core/utils/assets.dart';
import '../../../Absences_tab/presentaion/absences_tab.dart';
import '../../../account_page/presentation/views/widgets/icon_box.dart';
import '../../../review_tab/presentaion/reviews_tab.dart';
import 'contant_card.dart';

class ChildProfileScreenBody extends StatefulWidget {
  const ChildProfileScreenBody({super.key, required this.parentId});
  final String parentId;
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
        GestureDetector(
            onTap: () {
              // BlocProvider.of<BottomNavCubit>(context)
              //     .updateBottomNavIndex(kEditProfileScreen);
            },
            child: IconBox(
              child: SvgPicture.asset("assets/icons/setting.svg",
                  width: 20, height: 20),
            ))
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
                  const Text(
                    "mohamed adel",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: context.screenHeight * 0.01,
                  ),
                  Text(
                    "الصف الاول",
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
                          builder: (context) =>  ReviewsTabScreen(data: state.dataInfo,parentId: widget.parentId),
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
                          builder: (context) =>
                              ExamTabScreen(data: state.dataInfo,parentId: widget.parentId),
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
                          builder: (context) =>
                              AbsencesTabScreen(data: state.dataInfo,parentId: widget.parentId),
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
              ContantCardChild(text: "درجات الطالب", image:    Image.asset(   width: context.screenWidth*0.15,
               height: context.screenHeight*0.15,"assets/images/immigration.png"),)
            ],
          ),
        ),
      ],
    );
  }
}
