import 'package:alandalos_project/Features/Absences_tab/presentaion/manager/absence_cubit.dart';
import 'package:alandalos_project/Features/absence_details/data-source/data-source.dart';
import 'package:alandalos_project/Features/absence_details/presentaion/manager/absence_details_cubit.dart';
import 'package:alandalos_project/Features/auth/login_screen/presentaion/login_screen.dart';
import 'package:alandalos_project/Features/auth/login_screen/presentaion/manager/login_cubit.dart';
import 'package:alandalos_project/Features/exam_tab/presentaion/manager/exam_details_cubit.dart';
import 'package:alandalos_project/Features/messages/presentation/manager/message_cubit.dart';
import 'package:alandalos_project/Features/review_details/data-source/data-source.dart';
import 'package:alandalos_project/Features/review_details/presentaion/manager/reviews_details_cubit.dart';
import 'package:alandalos_project/Features/review_tab/data_source/review_data_source.dart';
import 'package:alandalos_project/Features/review_tab/presentaion/manager/reviews_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'Features/Absences_tab/data/data_source.dart';
import 'Features/auth/login_screen/data/data_source.dart';
import 'Features/exam_tab/data/data_source.dart';
import 'Features/exams_details/data-source/data-source.dart';
import 'Features/exams_details/presentaion/manager/exams_details_cubit.dart';
import 'Features/messages/data/data_source.dart';
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
        BlocProvider<ExamCubit>(
          create: (BuildContext context) => ExamCubit(GetExamDetails()),
        ),
        BlocProvider<GetAbsenceCubit>(
          create: (BuildContext context) => GetAbsenceCubit(GetAbsence()),
        ),
        BlocProvider<GetReviewCubit>(
          create: (BuildContext context) => GetReviewCubit(GetReview()),
        ),
        BlocProvider<GetAbsenceDetailsCubit>(
          create: (BuildContext context) => GetAbsenceDetailsCubit(GetAbsenceDetails()),
        ),
        BlocProvider<GetExamsDetailsCubit>(
          create: (BuildContext context) => GetExamsDetailsCubit(GetExamsDetails()),
        ),
        BlocProvider<GetReviewsDetailsCubit>(
          create: (BuildContext context) => GetReviewsDetailsCubit(GetReviewsDetails()),
        ),
        BlocProvider<MessageCubit>(
          create: (BuildContext context) => MessageCubit(GetMessages()),
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

