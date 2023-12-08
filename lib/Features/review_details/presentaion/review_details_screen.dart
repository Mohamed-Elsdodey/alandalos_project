import 'package:alandalos_project/Features/review_details/presentaion/widgets/absence_screen_body.dart';
import 'package:flutter/material.dart';
class ReviewsDetailsScreen extends StatelessWidget {
  const ReviewsDetailsScreen({super.key, required this.status, required this.points, required this.balance, required this.totalPoints, required this.rankClass, required this.subject, required this.date, required this.teacherName,});
  final String status,points,balance,totalPoints,rankClass,subject,date,teacherName;

  @override
  Widget build(BuildContext context) {
    return  ReviewsScreenBody(
   teacherName: teacherName,
      date: date,
      status: status,
      totalPoints: totalPoints,
      subject: subject,
      rankClass: rankClass,
      points: points,
      balance: balance,
    );
  }
}
