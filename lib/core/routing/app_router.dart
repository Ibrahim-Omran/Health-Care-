import 'package:flutter/material.dart';
import 'package:health_care_app/core/routing/routes.dart';
import 'package:health_care_app/features/login/ui/login_screen.dart';
import 'package:health_care_app/features/onboarding/onbording_screen.dart';

class AppRouter {

  Route generateRouter(RouteSettings settings){
    //this arguments to be passed in any screen like this ( arguments as ClassName)
    final arguments = settings.arguments;

    switch(settings.name){
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
            builder: (_)=> const OnboardingScreen()
        );
      case Routes.loginScreen:
        return MaterialPageRoute(
            builder: (_)=> const LoginScreen()
        );

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('Not Found..! ${settings.name}'),
            ),
          ),
        );
    }

  }
}