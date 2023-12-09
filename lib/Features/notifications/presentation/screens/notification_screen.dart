import 'package:alandalos_project/Core/utils/helper.dart';
import 'package:alandalos_project/Features/notifications/model/notification_model.dart';
import 'package:alandalos_project/core/widgets/custom_simple_app_bar.dart';
import 'package:flutter/material.dart';

import '../../../../Core/utils/constants.dart';
import '../../../../core/utils/assets.dart';
import '../widgets/notification_list_body.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key, required this.dataNotification, required this.parentId});
final NotificationModel dataNotification;
final String parentId;
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        backgroundColor: kPrimaryColorWhite,
        body: Column(
            children: [
              SizedBox(height: context.screenHeight *0.02,),
              CustomSimpleAppBar(
                backgroundColor: kPrimaryColorWhite,
                appBarTitle: "",
                leadingWidget: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: context.screenWidth * .07,
                  ),
                  child: Row(
                    children: [

                      PopupMenuButton(
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(15.0))),
                        offset: Offset(0, context.screenHeight * .05),
                        child: Image.asset(
                            height:context.screenHeight*0.04,
                            width:context.screenWidth*0.04,
                            AssetsData.dotsIcon),
                        itemBuilder: (context) {
                          return [
                            PopupMenuItem(
                                child: Text(
                              "تجاهل",
                              style:  TextStyle(
                                color: Colors.black,
                                fontSize: context.screenWidth*0.03,
                                fontWeight: FontWeight.bold,
                                // letterSpacing: 0.36,
                              ),
                            )),
                            PopupMenuItem(
                                child: Text(
                             "حذف جميع الرسايل ",
                              style:  TextStyle(
                                color: Colors.black,
                                fontSize: context.screenWidth*0.03,
                                fontWeight: FontWeight.bold,
                                //   letterSpacing: 0.36,
                              ),
                            ))
                          ];
                        },
                      ),
                      SizedBox(width: context.screenWidth*0.02,),
                      Image.asset(
                        AssetsData.bellIcon,
                        color: kPrimaryColor,
                      ),
                      SizedBox(
                        width: context.screenWidth * .3,
                      ),
                      Text(
                       "الاشعارات",
                        style: TextStyle(
                            fontSize: context.screenWidth * .04,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0.51,
                            color: Colors.black),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: context.screenHeight *0.01,),

               NotificationListBodyWidget(dataNotification: dataNotification,parentId: parentId,)
            ],
        ),
      ),
    );
  }
}
