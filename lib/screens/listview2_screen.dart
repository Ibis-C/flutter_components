import 'package:flutter/material.dart';

import 'package:fl_components/theme/app_theme.dart';

class Listview2Screen extends StatelessWidget {
  const Listview2Screen({Key? key}) : super(key: key);
  final options = const [
    'Megaman',
    'Metal Gear',
    'Super Smash',
    'Final Fantasy'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Listiview Tipo 2')),
      /**usar ListVie.separated porque se crearan los elementos basados de un arreglo, lista y se quiere agregar una separación*/
      body: ListView.separated(
          itemBuilder: (context, index) => ListTile(
                title: Text(options[index]),
                trailing: Icon(Icons.arrow_forward_ios_rounded,
                    color: AppTheme.primary),
                /*Propiedad del ListTile que recibe una funcion*/ onTap: () {
                  /* final game = options[index];
                  print(game); */
                },
              ),
          separatorBuilder: (_, __) => const Divider(),
          /* número de elementos que se mostraran */ itemCount: options.length),
    );
  }
}
