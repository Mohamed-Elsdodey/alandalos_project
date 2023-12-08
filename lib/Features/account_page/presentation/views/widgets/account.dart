import 'package:alandalos_project/Core/utils/helper.dart';
import 'package:alandalos_project/Features/account_page/presentation/views/widgets/icon_box.dart';
import 'package:alandalos_project/Features/account_page/presentation/views/widgets/setting_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/constants.dart';
import '../../../../home/presentation/widgets/home_text_divider_widget.dart';


class AccountPage extends StatefulWidget {
  const AccountPage({ Key? key }) : super(key: key);

  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.transparent,
            pinned: true,
            snap: true,
            floating: true,
            title: getAppBar(),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => buildBody(),
              childCount: 1,
            ),
          )
        ],
      )
    );
  }

  Widget getAppBar(){
    return
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
           Expanded(child:
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(context.locale.translate('personal_account')!, style: TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.w600),),
              ],
            )
          ),
          GestureDetector(
              onTap: (){
                // BlocProvider.of<BottomNavCubit>(context)
                //     .updateBottomNavIndex(kEditProfileScreen);
                     },
              child: IconBox(child: SvgPicture.asset("assets/icons/setting.svg", width: 20, height: 20),  ))
        ],
      );
  }

   Widget buildBody() {
    return 
    SingleChildScrollView(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
      child: Column(
        children: [
          Container(
            child: Column(
              children: <Widget>[
                CircleAvatar(radius: context.screenHeight * .06,  backgroundImage:  AssetImage(AssetsData.childImage),),

                const SizedBox(height: 12,),
                const Text("mohamed adel",
                  style: TextStyle(
                    color: textColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w500
                  ),
                ),
                const SizedBox(height: 8,),
                const Text("mohamedadel@gmail.com",
                      style: TextStyle(
                        color: labelColor,
                        fontSize: 14,
                      ),
                    ),
              ],
            ),
          ),

          Padding(
            padding: EdgeInsets.only(
              top: 20,
              left: context.locale.isEnLocale ? 0 : 20,
            ),
            child: Column(
              children: [
                HomeTextDivider(
                  rowText: context.locale.translate("children")!,
                ),
                // Padding(
                //   padding: EdgeInsets.only(
                //       right: context.locale.isEnLocale ? 0 : 20,
                //       left: context.locale.isEnLocale ? 20 : 0),
                //   child: SizedBox(
                //     height: context.screenHeight ,
                //     child: HomeChildrenListWidget(data: data),
                //   ),
                // ),

              ],
            ),
          ),
          const SizedBox(height: 10),
          SettingItem(title: "Sign Out", leadingIcon: Icons.logout_outlined, leadingIconColor: Colors.grey.shade400,
            onTap: (){
              showConfirmLogout();
            },
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }

  showConfirmLogout(){
    showCupertinoModalPopup(
      context: context, 
      builder: (context) =>
        CupertinoActionSheet(
          message: const Text("Would you like to sign out?"),
          actions: [
            CupertinoActionSheetAction(
              onPressed: (){

              },
              child: const Text("Sign Out", style: TextStyle(color: actionColor),),
            )
          ],
          cancelButton: 
            CupertinoActionSheetAction(child:
              const Text("Cancel"),
              onPressed: (){
               Navigator.of(context).pop();
              },
            )
        )
    );
  }

}
