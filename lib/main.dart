import 'package:alandalos_project/Features/auth/login_screen/presentaion/login_screen.dart';
import 'package:alandalos_project/Features/auth/login_screen/presentaion/manager/login_cubit.dart';
import 'package:alandalos_project/Features/exam_tab/presentaion/manager/exam_details_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'Features/auth/login_screen/data/data_source.dart';
import 'Features/exam_tab/data/data_source.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MultiBlocProvider(
      providers: [
        BlocProvider<LoginCubit>(
          create: (BuildContext context) => LoginCubit(PostDataServices()),
        ),
        BlocProvider<ExamDetailsCubit>(
          create: (BuildContext context) => ExamDetailsCubit(GetExamDetails()),
        ),

      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),

        home:

           LoginScreen(),

      ),
    );
  }
}

