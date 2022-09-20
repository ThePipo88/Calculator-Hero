import 'package:calculator_hero/presentation/resources/strings_manager.dart';
import 'package:flutter/material.dart';

import '../calculator/calculator.dart';
import '../splash/splash.dart';

class Routes {
  static const String splashRoute = "/";
  static const String calculatorRoute = "/calculator";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => SplashView());
      case Routes.calculatorRoute:
        return MaterialPageRoute(builder: (_) => CalculatorView());
      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: Text("No Route Found"),
              ),
              body: Center(child: Text(AppStrings.noRouteFound)),
            ));
  }
}
