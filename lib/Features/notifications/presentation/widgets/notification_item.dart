import 'package:alandalos_project/core/utils/helper.dart';
import 'package:flutter/material.dart';
import '../../../../core/utils/assets.dart';
import '../../../../core/utils/constants.dart';
import '../../../notification_details/presentaion/notification_details_screen.dart';

class NotificationItemWidget extends StatelessWidget {
  const NotificationItemWidget(
      {super.key,
      this.hasBorder = true,
      required this.title,
      required this.text,
      required this.date,
      required this.notificationId,
      required this.parentId,
      required this.foreignId, required this.type});
  final bool hasBorder;
  final String title, text, date, notificationId, parentId, foreignId,type;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => NotificationDetailsScreen(

                type: type,
                  text: text,
                  title: title,
                  date: date,
                  foreignId: foreignId,
                  notificationId: notificationId,
                  parentId: parentId),
            ));
      },
      child: Padding(
        padding: EdgeInsets.only(bottom: context.screenHeight * 0.01),
        child: Container(
          height: context.screenHeight * 0.15,
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
            title: Text(
              title,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  color: const Color(0xFF6C6A6A),
                  fontSize: context.screenWidth * 0.03,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.42,
                  height: 2),
            ),
            subtitle: Text(
              text,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              style: TextStyle(
                  color: const Color(0xFF6C6A6A),
                  fontSize: context.screenWidth * 0.03,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.36,
                  height: 2),
            ),
          ),
        ),
      ),
    );
  }
}
