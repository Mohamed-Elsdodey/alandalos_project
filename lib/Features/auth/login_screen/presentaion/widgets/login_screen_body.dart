import 'package:alandalos_project/Core/utils/helper.dart';
import 'package:alandalos_project/Features/home/presentation/screens/home_screen.dart';
import 'package:alandalos_project/core/utils/assets.dart';
import 'package:alandalos_project/core/utils/gaps.dart';
import 'package:alandalos_project/core/widgets/custom_button.dart';
import 'package:alandalos_project/core/widgets/custom_login_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../manager/login_cubit.dart';
import '../manager/login_state.dart';
class LoginScreenBody extends StatelessWidget {
  const LoginScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController   emailController = TextEditingController();
    final TextEditingController   passWordController = TextEditingController();
    return  Scaffold(
      resizeToAvoidBottomInset: true,
      body:       SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Gaps.vGap100,
            Center(
              child: Image.asset(
                AssetsData.logInImage,
                width: context.screenWidth * .55,
                height:context.screenHeight*0.33,
              ),
            ),
            Gaps.vGap30,
            CustomLoginTextField(
              textLabel: "email",
              controller: emailController,
              stringInTextField: "Enter Email",
              obscureText: false,
              textInputType: TextInputType.emailAddress,
             // validator: validateUserPhone,
              prefixIcon: const Icon(Icons.email),
            ),
            Gaps.vGap15,
            CustomLoginTextField(

              textLabel: "password",
              controller: passWordController,
              stringInTextField: "***********",
              obscureText: true,
              textInputType: TextInputType.visiblePassword,
             // validator: validateUserPhone,
            ),

            Gaps.vGap50,
            BlocListener<LoginCubit, LoginState>(
              listener: (context, state) {
                if (state is FeaturedRepositoryFailure) {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text("error"),
                  ));
                } else if (state is FeaturedRepositorySuccess) {
                  Navigator.push(context, MaterialPageRoute(
                        builder: (context) => HomeScreen(

                          data: state.dataInfo,
                          nameParent: state.dataInfo.name!,)
                      ));
                } else {
                  const CircularProgressIndicator();
                }
              },
              child:
           CustomButton(
                onTapAvailable: true,
                buttonText: "login",
                buttonTapHandler: () async {
                  BlocProvider.of<LoginCubit>(context).getAllData(
                    email: emailController.text,
                    password: passWordController.text,
                  );
                },
                screenWidth: context.screenWidth * .75,
              ),

            )
          ],
        ),
      ),
    );
  }
}
