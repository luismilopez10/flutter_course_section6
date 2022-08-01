import 'package:flutter/material.dart';

import 'package:seccion6_fluttercourse/models/models.dart';
import 'package:seccion6_fluttercourse/ui/screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    MenuOption(
        route: 'listview1',
        name: 'Listview Tipo 1',
        icon: Icons.list_alt,
        screen: const Listview1Screen()),
    MenuOption(
        route: 'listview2',
        name: 'Listview Tipo 2',
        icon: Icons.list,
        screen: const Listview2Screen()),
    MenuOption(
        route: 'alert',
        name: 'Alertas',
        icon: Icons.add_alert_outlined,
        screen: const AlertScreen()),
    MenuOption(
        route: 'card',
        name: 'Cards',
        icon: Icons.credit_card,
        screen: const CardScreen()),
    MenuOption(
        route: 'avatar',
        name: 'Circle Avatar',
        icon: Icons.supervised_user_circle_outlined,
        screen: const AvatarScreen()),
    MenuOption(
        route: 'animated',
        name: 'Animated Container',
        icon: Icons.play_circle_outline_outlined,
        screen: const AnimatedScreen()),
    MenuOption(
        route: 'inputs',
        name: 'Text Inputs',
        icon: Icons.input_rounded,
        screen: const InputsScreen()),
    MenuOption(
        route: 'sliders',
        name: 'Sliders && Checks',
        icon: Icons.slow_motion_video_rounded,
        screen: const SliderScreen()),
    MenuOption(
        route: 'listviewbuilder',
        name: 'Infinite Scroll & Pull to refresh',
        icon: Icons.build_circle_outlined,
        screen: const ListViewBuilderScreen()),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});

    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }

    return appRoutes;
  }

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home': (BuildContext context) => const HomeScreen(),
  //   'listview1': (BuildContext context) => const Listview1Screen(),
  //   'listview2': (BuildContext context) => const Listview2Screen(),
  //   'alert': (BuildContext context) => const AlertScreen(),
  //   'card': (BuildContext context) => const CardScreen(),
  // };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }
}
