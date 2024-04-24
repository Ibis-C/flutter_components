import 'package:flutter/material.dart' show IconData, Widget;

class MenuOption {
  //nombre de la ruta a la que quiero ir
  final String route;
  final IconData icon;
  final String routeName;
  final Widget screen;

  MenuOption(
      {required this.route,
      required this.icon,
      required this.routeName,
      required this.screen});
}
