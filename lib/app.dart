import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'Features/Splash/presentation/manger/locale_cubit/locale_cubit.dart';
import 'core/locale/app_localizations_setup.dart';

class School extends StatelessWidget {
  const School({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        // BlocProvider(
        //   create: (context) => getIt<LocaleCubit>(),
        // ),
        // BlocProvider(
        //   create: (_) => getIt<BottomNavCubit>(),
        // ),


      ],
      child: BlocBuilder<LocaleCubit, LocaleState>(
        buildWhen: (previousState, currentState) =>
            previousState != currentState,
        builder: (_, localeState) {
          return MaterialApp(
            locale: localeState.locale,
           // onGenerateRoute: AppRoutes.onGenerateRoute,
            supportedLocales: AppLocalizationsSetup.supportedLocales,
            localeResolutionCallback:
                AppLocalizationsSetup.localeResolutionCallback,
            localizationsDelegates:
                AppLocalizationsSetup.localizationsDelegates,
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              appBarTheme: const AppBarTheme(
                  titleTextStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontFamily: 'almarai-Regular',
                      fontWeight: FontWeight.bold)),
              primarySwatch: Colors.blue,
              fontFamily: "almarai-Regular",
            ),

            // ThemeData.dark().copyWith(
            //   scaffoldBackgroundColor: kPrimaryColor,
            //   textTheme:
            //       GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
            // ),
          );
        },
      ),
    );
  }
}
