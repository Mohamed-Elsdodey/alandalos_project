import 'package:alandalos_project/core/utils/helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/utils/assets.dart';
import '../../../../core/utils/constants.dart';
import 'absences_List_widgets.dart';

class AbsencesTabBody extends StatelessWidget {
  const AbsencesTabBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
           "الغياب ",
            style: TextStyle(fontSize: context.screenWidth * 0.04),
          )),
      backgroundColor: kPrimaryColorWhite,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: context.screenHeight * 0.02,
              vertical: context.screenWidth * 0.02),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 10,
                  left: 10,
                  right: 10,
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          right: 10,
                          left:  10 ),
                      child: SizedBox(
                        height: context.screenHeight,
                        child: const AbsencesListWidgets(),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
