import 'package:alandalos_project/Features/absence_details/model/absenceDetailsModel.dart';
import 'package:alandalos_project/Features/notification_details/presentaion/widgets/notification_details_screen_body.dart';
import 'package:flutter/material.dart';

class NotificationDetailsScreen extends StatelessWidget {
  const NotificationDetailsScreen(
      {super.key,
      required this.foreignId,
      required this.notificationId,
      required this.parentId,
      required this.title,
      required this.text,
      required this.date,
      required this.type});
  final String foreignId, notificationId, parentId;

  final String title, text, date, type;
  @override
  Widget build(BuildContext context) {
    return NotificationDetailsScreenBody(

      date: date,
      title: title,
      type: type,
      text: text,
      foreignId: foreignId,
      parentId: parentId,
      notificationId: notificationId,
    );
  }
}
