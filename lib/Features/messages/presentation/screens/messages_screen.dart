import 'package:alandalos_project/Core/utils/helper.dart';
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import '../../../../Core/utils/constants.dart';
import '../../../../core/utils/assets.dart';
import '../../models/message_model.dart';
import '../widgets/messages_list_widget.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({super.key, required this.data});
final MessageModel data;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:     AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          elevation: 0,
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Padding(
              padding:
              EdgeInsets.symmetric(horizontal: context.screenWidth * 0.02),
              child: const Icon(Icons.arrow_back, color: kPrimaryColorBlack),
            ),
          ),
          actions: [
            Padding(
              padding:
              EdgeInsets.symmetric(horizontal: context.screenWidth * 0.02),
              child: GestureDetector(
                onTap: () {
                  // BlocProvider.of<BottomNavCubit>(context)
                  //     .updateBottomNavIndex(kNotificationsScreen);
                },
                child: Image.asset(
                  AssetsData.bellIcon,
                ),
              ),
            ),
          ],
          backgroundColor: kPrimaryColorWhite,
          title: Text(
            "الرسايل",
            style: TextStyle(fontSize: context.screenWidth * 0.04),
          )),
      body: FadeInUp(
        child: Container(
            color: kBackGroundColor,
            child:  Column(crossAxisAlignment: CrossAxisAlignment.end, children: [

              Expanded(
                child: Stack(
                  // alignment: context.locale.isEnLocale
                  //     ? Alignment.bottomRight
                  //     : Alignment.bottomLeft,
                  children: [
                    MessagesListWidget(data: data),

                  ],
                ),
              ),
            ])),
      ),
    );
  }
}
