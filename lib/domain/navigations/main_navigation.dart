import 'package:flutter/material.dart';

import 'package:chat_app/screens/home/home.dart';
import 'package:chat_app/screens/chat/chat.dart';

abstract class MainNavigationRoutesName {
  static const home = '/';
  static const chat = '/chat';
}

class MainNavigation {
  final initialRoute = MainNavigationRoutesName.chat;

  final routes = <String, Widget Function(BuildContext)>{
    MainNavigationRoutesName.home: (context) => const Home(),
    MainNavigationRoutesName.chat: (context) => const Chat(),
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
