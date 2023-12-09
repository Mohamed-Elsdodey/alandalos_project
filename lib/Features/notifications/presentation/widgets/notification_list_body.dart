import 'package:alandalos_project/Core/utils/helper.dart';
import 'package:alandalos_project/Features/notifications/model/notification_model.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/constants.dart';
import 'notification_item.dart';

class NotificationListBodyWidget extends StatelessWidget {
  const NotificationListBodyWidget({super.key, required this.dataNotification, required this.parentId, });
  final NotificationModel dataNotification;
  final String parentId;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
          width: double.infinity,
          padding: EdgeInsets.only(
            left: context.screenWidth * .05,
            right: context.screenWidth * .05,
            top: context.screenHeight * 0,
          ),
          color: kPrimaryColorWhite,
          child: ListView.builder(
            padding: const EdgeInsets.only(top: 2),
            physics: const BouncingScrollPhysics(),
            itemCount: dataNotification.data!.length,
            itemBuilder: (context, index) {
              return  NotificationItemWidget(hasBorder: index != 5,
                parentId: parentId,
                foreignId: dataNotification.data![index].foreignId.toString(),
                notificationId: dataNotification.data![index].id.toString(),
                date: dataNotification.data![index].date.toString(),
                text: dataNotification.data![index].text.toString(),
                title: dataNotification.data![index].title.toString(),);
            },
          )),
    );
  }
}
