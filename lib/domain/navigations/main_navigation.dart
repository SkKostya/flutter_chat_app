import 'package:chat_app/screens/home/home.dart';
import 'package:flutter/material.dart';

abstract class MainNavigationRoutesName {
  static const home = '/';
}

class MainNavigation {
  final routes = <String, Widget Function(BuildContext)>{
    MainNavigationRoutesName.home: (context) => const Home(),
  };

  // Route<Object> onGenerateRoute(RouteSettings settings) {
  //   switch (settings.name) {
  //     case MainNavigationRoutesName.calculationsEditOrder:
  //       final calculationId = settings.arguments as int;
  //       return MaterialPageRoute(
  //           builder: (context) =>
  //               CalculationEditOrder(calculationId: calculationId));
  //     default:
  //       return MaterialPageRoute(
  //           builder: (context) => Text('Navigation error!'));
  //   }
  // }
}
