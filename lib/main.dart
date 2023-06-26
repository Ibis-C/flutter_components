/* Crear toda la estructura rápidamente: mateapp + TAB */

// Tener la menor cantidad de exportaciones
import 'package:flutter/material.dart';

import 'package:fl_components/router/app_routes.dart';
import 'package:fl_components/theme/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        /* Acceder rapidamente al widget = ctrl + clicWidget */
        // home: const Listview2Screen(),
        initialRoute: AppRoutes.initialRoute,
        routes: AppRoutes.getAppRoutes(),
        onGenerateRoute: /*Las setting las manda el onGenerateRoute: (settings) => AppRoutes.onGenerateRoute(settings); pero esto es muy repetitivo, entonces podemos hacerlo implicito*/
            AppRoutes.onGenerateRoute,
        theme: AppTheme.lightTheme);
  }
}
