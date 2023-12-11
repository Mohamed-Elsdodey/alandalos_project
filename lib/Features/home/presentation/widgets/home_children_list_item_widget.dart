import 'package:alandalos_project/Features/Absences_tab/model/absence_model.dart';
import 'package:alandalos_project/core/utils/helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../child_profile/presentaion/widgets/child_profile_screen_body.dart';
import 'custom_home_container.dart';

class HomeChildrenListItemWidget extends StatelessWidget {
  const HomeChildrenListItemWidget(
      {super.key,
      required this.color,
      required this.nameStudent,
      required this.classStudent,
      required this.rankSchool,
      required this.rankLine,
      required this.rankClass,
      required this.imageStudent,
      required this.parentId});
  final Color color;
  final String classStudent,
      rankSchool,
      rankLine,
      rankClass,
      imageStudent,
      parentId,

      nameStudent;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ChildProfileScreenBody(

                  parentId: parentId,
                  classStudent: classStudent,
                  namStudent: nameStudent),
            ));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: CustomHomeContainer(
          color: color,
          height: context.screenHeight * 0.33,
          width: context.screenWidth * 0.1,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: context.screenHeight * .05,
                backgroundImage: NetworkImage(imageStudent),
              ),
              SizedBox(
                height: context.screenHeight * 0.01,
              ),
              Text(
                nameStudent,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: context.screenWidth * 0.03,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: context.screenHeight * .009,
              ),
              Text(
                classStudent,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: context.screenWidth * 0.028,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    " (${rankSchool}) ",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: context.screenWidth * 0.03,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    " : الترتيب علي المدرسة  ",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: context.screenWidth * 0.03,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: context.screenHeight * .009,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    " (${rankLine}) ",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: context.screenWidth * 0.03,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    " : الترتيب علي الصف ",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: context.screenWidth * 0.03,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: context.screenHeight * .009,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    " (${rankClass}) ",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: context.screenWidth * 0.03,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    " :  الترتيب علي القصل ",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: context.screenWidth * 0.03,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
