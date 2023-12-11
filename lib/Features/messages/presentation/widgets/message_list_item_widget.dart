import 'package:alandalos_project/Core/utils/helper.dart';
import 'package:alandalos_project/Features/home/presentation/widgets/custom_home_container.dart';
import 'package:flutter/material.dart';
import '../../../../core/utils/assets.dart';
import '../../../../core/utils/constants.dart';
import '../../../message_details/presentaion/message_details_screen.dart';

class MessagesListItemWidget extends StatelessWidget {
  const MessagesListItemWidget({super.key, required this.title, required this.text, required this.date});
final String title,text,date;
  @override
  Widget build(BuildContext context) {
    return
      GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => MessageDetailsScreen(title: title,text: text,date: date),));
        },
        child: CustomHomeContainer(
        height: context.screenHeight * .1,
        width: context.screenWidth,
        color: Colors.white,
        child: ListTile(
          title:  Text(
           title,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
          ),
          subtitle:  Text(
            text,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontSize: 10,
            ),
          ),
          trailing:  Text(
           date,
            style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
          ),
          leading: CircleAvatar(
            backgroundColor: kBackGroundColor,
            radius: context.screenHeight * .03,
            child: Image.asset(
              AssetsData.schoolIcon,
            ),
          ),
        ),
    ),
      );
  }
}
