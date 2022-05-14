import 'package:fl_components/models/models.dart';
import 'package:fl_components/screens/codigo_screen.dart';
import 'package:fl_components/screens/proyecto_screen.dart';
import 'package:fl_components/screens/sitio_screen.dart';
import 'package:flutter/material.dart';
import '../screens/screen.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    // Todo bottat home
    //MenuOption(route: 'home', name: 'Home Screen', screen: const HomeScreen(), icon: Icons.home),
    MenuOption(
        route: 'listview1',
        name: 'Listview Tipo 1',
        screen: const Listview1Screen(),
        icon: Icons.library_add),
    MenuOption(
        route: 'listview2',
        name: 'Listview Tipo 2',
        screen: const Listview2Screen(),
        icon: Icons.library_add_check),
    MenuOption(
        route: 'alert',
        name: 'Alert screen',
        screen: const AlertScreen(),
        icon: Icons.align_vertical_bottom),
    MenuOption(
        route: 'card',
        name: 'Card screen!',
        screen: const CardScreen(),
        icon: Icons.card_giftcard),
    MenuOption(
        route: 'avatar',
        name: 'Avatar screen!',
        screen: const AvatarScreen(),
        icon: Icons.supervised_user_circle_outlined),
    MenuOption(
        route: 'animated',
        name: 'Animated screen!',
        screen: const AnimatedScreen(),
        icon: Icons.animation),
    MenuOption(
        route: 'input',
        name: 'Inputs screen!',
        screen: const InputsScreen(),
        icon: Icons.power_input_outlined),
    MenuOption(
        route: 'codigo',
        name: 'Codigo HyC',
        screen: const CodigoScreen(),
        icon: Icons.factory_outlined),
    MenuOption(
        route: 'proyecto',
        name: 'Proyectos HyC',
        screen: const ProyectoScreen(),
        icon: Icons.business_center_outlined),
    MenuOption(
        route: 'sitio',
        name: 'Sitios',
        screen: const SitioScreen(),
        icon: Icons.business_center_outlined),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({"home": (BuildContext context) => const HomeScreen()});

    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }

    return appRoutes;
  }
  // static  Map<String, Widget Function(BuildContext)> routes = {
  //   'listview1' : (BuildContext context) => const  Listview1Screen(),
  //     'listview2' : (BuildContext context) => const  Listview2Screen(),
  //     'alert'     : (BuildContext context) => const  AlertScreen(),
  //     'card'      : (BuildContext context) => const  CardScreen(),
  //     'home'      : (BuildContext context) => const  HomeScreen()
  //};

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }
}
