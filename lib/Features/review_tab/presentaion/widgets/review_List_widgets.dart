import 'dart:math';
import 'package:alandalos_project/Features/review_tab/model/review_model.dart';
import 'package:alandalos_project/Features/review_tab/presentaion/widgets/reviewListViewWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../Core/utils/constants.dart';
import '../../../review_details/presentaion/manager/reviews_details_cubit.dart';
import '../../../review_details/presentaion/manager/reviews_details_state.dart';
import '../../../review_details/presentaion/review_details_screen.dart';
class ReviewListWidgets extends StatefulWidget {
  const ReviewListWidgets({super.key, required this.data, required this.parentId});
  final ReviewsModel data;
  final String parentId;
  @override
  State<ReviewListWidgets> createState() => _ReviewListWidgetsState();
}

class _ReviewListWidgetsState extends State<ReviewListWidgets> {
  var listColor = [kChildrenContainerColor1, kChildrenContainerColor2];

  final _random = Random();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.data.data!.length,
      itemBuilder: (context, index) {
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
                BlocProvider.of<GetReviewsDetailsCubit>(context).getAllDataReviewsDetails(widget.parentId, widget.data.data![index].id.toString());
              },
              child: ReviewListView(
                parentId: widget.parentId,
                ReviewsId: widget.data.data![index].id.toString(),
                status: widget.data.data![index].type.toString(),
                date: widget.data.data![index].date.toString(),
                balance: widget.data.data![index].balance.toString(),
                points: widget.data.data![index].points.toString(),
                teacherName: widget.data.data![index].teacher!.name.toString(),
                rankClass: widget.data.data![index].roomRanking.toString(),
                subject: widget.data.data![index].category!.title.toString(),
                totalPoints:  widget.data.data![index].totalPoints.toString(),
                color: listColor[_random.nextInt(listColor.length)],
              )
          ),
        );
      },
      padding: const EdgeInsets.only(top: 5, right: 5),
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
    );
  }
}
