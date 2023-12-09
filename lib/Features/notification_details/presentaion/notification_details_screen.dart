import 'package:alandalos_project/Features/message_details/presentaion/widgets/message_details_screen_body.dart';
import 'package:flutter/material.dart';
class MessageDetailsScreen extends StatelessWidget {
  const MessageDetailsScreen({super.key, required this.title, required this.text, required this.date, });
  final String title,text,date;

  @override
  Widget build(BuildContext context) {
    return  MessageDetailsScreenBody(
   text: text,
      title: title,
      date: date,

    );
  }
}
