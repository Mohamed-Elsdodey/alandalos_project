import 'package:alandalos_project/Core/utils/helper.dart';
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import '../../../auth/login_screen/model/login_model.dart';
import '../widgets/custom_home_app_bar_widget.dart';
import '../widgets/home_children_list_widget.dart';
import '../widgets/home_text_divider_widget.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, required this.nameParent, required this.data,});
final String nameParent;
final Data data;
  @override
  Widget build(BuildContext context) {

    return FadeInUp(
      child: SafeArea(
          child:
          Scaffold(
            backgroundColor: Colors.white,
            body: Column(
              children: [
                CustomHomeAppBar(

                  nameParent:nameParent,
                  tapHandler: () {

                  },
                ),
                Expanded(
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child:
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 20,

                      ),
                      child: Column(

                        children: [
                          const HomeTextDivider(
                            rowText:"الاطفال ",
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                right: 20,
                                left:20),
                            child: SizedBox(
                              height: context.screenHeight ,
                              child:
                            HomeChildrenListWidget(
                            data: data,

                            ),
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          )
    );
  }
}
