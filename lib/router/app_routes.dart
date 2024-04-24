//Esto no será un widget. Será una clase.
// _AppRoutes == clasePrivada
import 'package:flutter/material.dart';

import '../models/models.dart';
import '../screens/screens.dart';

class AppRoutes {
  static const initialRoute =
      'home'; //Hace referencia al 'home' de Lista de menuOptions
  static final menuOptions = <MenuOption>[
    // TODO: borrar home
    MenuOption(
        route: 'home',
        icon: Icons.home,
        routeName: 'Home',
        screen: const HomeScreen()),
    MenuOption(
        route: 'listView1',
        icon: Icons.table_rows_outlined,
        routeName: 'Listview tipo 1',
        screen: const Listview1Screen()),
    MenuOption(
        route: 'listview2',
        icon: Icons.table_rows_rounded,
        routeName: 'Listview tipo 2',
        screen: const Listview2Screen()),
    MenuOption(
        route: 'alert',
        icon: Icons.crisis_alert,
        routeName: 'Alertas - Alerts',
        screen: const AlertScreen()),
    MenuOption(
        route: 'card',
        icon: Icons.credit_card,
        routeName: 'Tarjetas - Cards',
        screen: const CardScreen())
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    // funcion getAppRoutes: leer el menuOptions y basado en cada una de las opciones del menú, se va a construir las respuestas
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }
    return appRoutes;
  }

  /* Lo mismo que el menuOptions, pero esta puede ser una practica no tan buena:

  static Map<String, Widget Function(BuildContext)> routes = {
    'home': (BuildContext context) => const HomeScreen(),
    'listView1': (BuildContext context) => const Listview1Screen(),
    'listView2': (BuildContext context) => const Listview2Screen(),
    'alert': (BuildContext context) => const AlertScreen(),
    'card': (BuildContext context) => const CardScreen()
  }; 
  */

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    //Genera una ruta que definimos si en algun caso no existe la ruta a la cual se quiere dirigir.
    // print(settings);

    return MaterialPageRoute(builder: (context) => const Listview2Screen());
  }
}
