import 'package:alandalos_project/Core/utils/helper.dart';
import 'package:alandalos_project/Features/message_details/presentaion/message_details_screen.dart';
import 'package:alandalos_project/Features/notification_details/model/notificationDetailsModel.dart';
import 'package:alandalos_project/Features/notification_details/presentaion/manager/exams_details_cubit.dart';
import 'package:alandalos_project/Features/notification_details/presentaion/manager/exams_details_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../Core/utils/constants.dart';
import '../../../../core/utils/assets.dart';
import '../../../home/presentation/widgets/custom_home_container.dart';

class NotificationDetailsScreenBody extends StatelessWidget {
  const NotificationDetailsScreenBody({
    super.key,
    required this.notificationDetailsData, required this.foreignId, required this.notificationId, required this.parentId,
  });

  final NotificationDetailsModel notificationDetailsData;
 final String foreignId,notificationId,parentId;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
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
          backgroundColor: kPrimaryColorWhite,
          title: Text(
            "تفاصيل الاشعار  ",
            style: TextStyle(fontSize: context.screenWidth * 0.05),
          )),
      body: Column(children: [
        CircleAvatar(
          backgroundColor: kBackGroundColor,
          radius: context.screenHeight * .09,
          child: Image.asset(
            AssetsData.schoolIcon,
          ),
        ),
        SizedBox(
          height: context.screenHeight * 0.02,
        ),
        BlocListener<GetNotificationDetailsCubit,GetNotificationDetailsState>(
          listener: (context, state) {
            if(state is FeaturedRepositorySuccessNotificationDetails){

          Navigator.push(context, MaterialPageRoute(builder: (context) => MessageDetailsScreen(title: "title", text: "text", date: "date"),));
            }
          },
          child: GestureDetector(
            onTap: (){
BlocProvider.of<GetNotificationDetailsCubit>(context).getAllDataNotificationDetails(
    parentId, notificationId, foreignId);
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomHomeContainer(
                height: context.screenHeight * .11,
                width: context.screenWidth,
                color: Colors.white,
                child: ListTile(
                  title: Text(
                    notificationDetailsData.data!.title.toString(),
                    overflow: TextOverflow.ellipsis,
                    style:
                        const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    notificationDetailsData.data!.text.toString(),
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  trailing: Text(
                    notificationDetailsData.data!.date.toString(),
                    style:
                        const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
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
            ),
          ),
        ),
      ]),
    );
  }
}
