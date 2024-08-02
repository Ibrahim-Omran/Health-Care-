import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:health_care_app/core/di/dependency_injection.dart';
import 'package:health_care_app/core/routing/routes.dart';
import 'package:health_care_app/features/home/ui/home_screen.dart';
import 'package:health_care_app/features/login/logic/login_cubit.dart';
import 'package:health_care_app/features/login/ui/login_screen.dart';
import 'package:health_care_app/features/onboarding/onbording_screen.dart';

class AppRouter {

  Route generateRouter(RouteSettings settings) {
    //this arguments to be passed in any screen like this ( arguments as ClassName)
    final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
            builder: (_) => const OnboardingScreen()
        );
      case Routes.loginScreen:
        return MaterialPageRoute(
            builder: (_) =>
                BlocProvider(
                  create: (context) => getIt<LoginCubit>(),
                  child: const LoginScreen(),
                )
        );
      case Routes.homeScreen:
        return MaterialPageRoute(
            builder: (_) => const HomeScreen()
        );

      default:
        return MaterialPageRoute(
          builder: (_) =>
              Scaffold(
                body: Center(
                  child: Text('Not Found..! ${settings.name}'),
                ),
              ),
        );
    }
  }
}