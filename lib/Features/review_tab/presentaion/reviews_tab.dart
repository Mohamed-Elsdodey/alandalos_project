
import 'package:alandalos_project/Features/review_tab/model/review_model.dart';
import 'package:alandalos_project/Features/review_tab/presentaion/widgets/reviews_tab_body.dart';
import 'package:flutter/material.dart';
class ReviewsTabScreen extends StatelessWidget {


  const ReviewsTabScreen({super.key, required this.data});
  final ReviewsModel data;
  @override

  @override
  Widget build(BuildContext context) {

        return  ReviewsTabBody(data: data,);
  }
}
