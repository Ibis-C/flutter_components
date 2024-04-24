import 'package:flutter/material.dart';

import 'package:fl_components/router/app_routes.dart';
import 'package:fl_components/theme/app_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // lista de las pantallas que tengo y a las cuales voy a poder accceder atraves de las lista que se crea en esta pantalla.
    final menuOptions = AppRoutes.menuOptions;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes en flutter'),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          leading: Icon(
            menuOptions[index].icon,
            color: AppTheme.primary,
          ),
          title: Text(menuOptions[index].routeName),
          onTap: () {
            // context sirve como una memoria de como esta construida nuestra aplicación
            /* final route = MaterialPageRoute(
                      /* Es una función que nos permite la construcción de un widget. Un builder retorna un widget*/ builder:
                          (context) => const Listview2Screen()); 
                  */
            /*Destruye la ruta anterior. Uso en Logins, ya que una vez que se autentican, no regresarían a esa pantalla:
                    Navigator.pushReplacemen(context, route);
                  */

            Navigator.pushNamed(context, menuOptions[index].route);
          },
        ),
        separatorBuilder: (_, __) => const Divider(),
        itemCount: menuOptions.length,
      ),
    );
  }
}
