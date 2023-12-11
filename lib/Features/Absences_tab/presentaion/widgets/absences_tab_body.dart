import 'package:alandalos_project/Features/Absences_tab/model/absence_model.dart';
import 'package:alandalos_project/core/utils/helper.dart';
import 'package:flutter/material.dart';
import '../../../../core/utils/assets.dart';
import '../../../../core/utils/constants.dart';
import 'absences_List_widgets.dart';

class AbsencesTabBody extends StatelessWidget {
  const AbsencesTabBody({super.key, required this.data, required this.parentId});
final AbsenceModel data;
final String parentId;

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
                padding: const EdgeInsets.only(
                  top: 10,
                  left: 10,
                  right: 10,
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          right: 10,
                          left:  10 ),
                      child: SizedBox(
                        height: context.screenHeight,
                        child:
                        AbsencesListWidgets(data: data,parentId: parentId),
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
