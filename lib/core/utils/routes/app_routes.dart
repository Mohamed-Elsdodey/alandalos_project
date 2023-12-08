// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:school/Features/Absences_tab/presentaion/absences_tab.dart';
// import 'package:school/Features/Absences_tab/presentaion/widgets/absences_tab_body.dart';
// import 'package:school/Features/auth/login/presentation/manager/login_cubit.dart';
// import 'package:school/Features/exam_tab/presentaion/widgets/exam_tab_body.dart';
// import 'package:school/Features/review_tab/presentaion/reviews_tab.dart';
// import 'package:school/features/auth/login/presentation/views/login_screen.dart';
// import 'package:school/features/introduction/presentation/screens/intro_screen.dart';
// import 'package:flutter/material.dart';
//
// import '../../../Features/auth/login/data/data_source.dart';
// import '../../../features/splash/presentation/views/splash_screen.dart';
// import '../../../features/home/presentation/widgets/bottom_nav_widget.dart';
// import '../../../features/introduction/manager/cubit/dot_stepper_cubit.dart';
// import '../../../features/language/presentation/screens/language_screen.dart';
// import '../constants.dart';
// import '../functions/setup_service_locator.dart';
//
// class AppRoutes {
//   static Route? onGenerateRoute(RouteSettings routeSettings) {
//     //final args = routeSettings.arguments;
//
//     switch (routeSettings.name) {
//       case initialRoute:
//         return MaterialPageRoute(builder: (_) => const splashScreen());
//       case kIntroductionScreenRoute:
//         return MaterialPageRoute(
//             builder: (_) => BlocProvider(
//                   create: (context) => getIt<DotStepperCubit>(),
//                   child: IntroScreen(),
//                 ));
//
//       case kBottomNavRoute:
//         return MaterialPageRoute(builder: (_) => BlocProvider<LoginCubit>(
//             create: (BuildContext context) => LoginCubit(PostDataServices()),
//             child: const BottomNavWidget()));
//       case kLoginScreenRoute:
//         return MaterialPageRoute(builder: (_) => BlocProvider<LoginCubit>(
//             create: (BuildContext context) => LoginCubit(PostDataServices()),
//         child: const LoginScreen()));
//
//       case kLanguageScreenRoute:
//         return MaterialPageRoute(builder: (_) => const LanguageScreen());
//       case kReviewsTabScreenRoute:
//         return MaterialPageRoute(builder: (_) => const ReviewsTabScreen());
//       case kExamsTabScreenRoute:
//         return MaterialPageRoute(builder: (_) => const ExamTabBody());
//       case kAbsencesTabScreenRoute:
//         return MaterialPageRoute(builder: (_) => const AbsencesTabScreen());
//       default:
//         return null;
//     }
//   }
// }
