import 'package:flutter/material.dart';
import 'package:flutter_components/models/models.dart';

import '../screens/screens.dart';

class AppRoutes {
  AppRoutes._();
  static const initialRoute = "home";

  static final menuOptions = <MenuOption>[
    // TODO : Borrar Home
    MenuOption(
        router: "listview1",
        name: "ListView1 Screen",
        screen: ListView1Screen(),
        icon: Icons.list_alt),
    MenuOption(
        router: "ListView2",
        name: "ListView2 Screen",
        screen: ListView2Screen(),
        icon: Icons.list),
    MenuOption(
        router: "alert",
        name: "alert Screen",
        screen: AlertScreen(),
        icon: Icons.bus_alert),
    MenuOption(
        router: "card",
        name: "card Screen",
        screen: CardScreen(),
        icon: Icons.sd_card),
    MenuOption(
        router: "avatar",
        name: "avatar Screen",
        screen: AvatarScreen(),
        icon: Icons.supervised_user_circle_outlined),
    MenuOption(
        router: "input",
        name: "input Screen",
        screen: InputScreen(),
        icon: Icons.input_outlined),
  ];

  static Map<String, Widget Function(BuildContext context)> getAppRoutes() {
    Map<String, Widget Function(BuildContext context)> appRoutes = {};
    // HomeScreen Route
    appRoutes.addAll({"home": (context) => const HomeScreen()});

    for (final option in menuOptions) {
      appRoutes.addAll({option.router: (context) => option.screen});
    }

    return appRoutes;
  }

/*
  static Map<String, Widget Function(BuildContext context)> routes = {
    "home": (BuildContext context) => const HomeScreen(),
    "listview1": (BuildContext context) => const ListView1Screen(),
    "listview2": (BuildContext context) => const ListView2Screen(),
    "alert": (BuildContext context) => const AlertScreen(),
    "card": (BuildContext context) => const CardScreen(),
  };
*/
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
            backgroundColor: Colors.black, title: const Text("Error Screen")),
        body: Center(child: const Text("Should Implement Screen  !!!!")),
      ),
    );
  }
}
