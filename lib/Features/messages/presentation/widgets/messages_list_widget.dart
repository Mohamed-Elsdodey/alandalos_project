import 'package:alandalos_project/Core/utils/helper.dart';
import 'package:alandalos_project/Features/messages/models/message_model.dart';
import 'package:flutter/cupertino.dart';
import 'message_list_item_widget.dart';

class MessagesListWidget extends StatelessWidget {
  const MessagesListWidget({
    super.key, required this.data,
  });
final MessageModel data;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      // padding: EdgeInsets.only(top: context.screenHeight * .02),
      padding: EdgeInsets.symmetric(
        vertical: context.screenHeight * .01,
        horizontal: context.screenWidth * .035,
      ),
      physics: const BouncingScrollPhysics(),
      itemCount: data.data!.length,
      itemBuilder: (context, index) {
        return  MessagesListItemWidget(
          text: data.data![index].text.toString(),
          date: data.data![index].date.toString(),title: data.data![index].title.toString(),);
      },
    );
  }
}
