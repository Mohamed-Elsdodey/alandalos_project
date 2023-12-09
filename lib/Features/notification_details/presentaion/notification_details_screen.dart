import 'package:alandalos_project/Features/notification_details/presentaion/widgets/notification_details_screen_body.dart';
import 'package:flutter/material.dart';

import '../model/notificationDetailsModel.dart';
class NotificationDetailsScreen extends StatelessWidget {
  const NotificationDetailsScreen({super.key, required this.notificationDetailsData, required this.foreignId, required this.notificationId, required this.parentId, });
  final String foreignId,notificationId,parentId;
final NotificationDetailsModel notificationDetailsData;
  @override
  Widget build(BuildContext context) {
    return  NotificationDetailsScreenBody(
foreignId: foreignId,
   parentId: parentId,
   notificationId: notificationId,
   notificationDetailsData: notificationDetailsData,

    );
  }
}
