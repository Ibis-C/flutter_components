import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {
  //LAS PROPIEDADES SE DECLARAN EN ESTA PARTE
  final options = const [
    'Megaman',
    'Metal Gear',
    'Super Smash',
    'Final Fantasy'
  ];
  const Listview1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listiview Tipo 1'),
      ),
      body: ListView(
        children: [
          //Crear una ListTile con las opciones que tenemos en la propiedad Lista options

          /*
          //.map tomo cada uno de los elemento de las ListaOptions y lo transformo en lo que sea que regrese
          //.map regresa algo que puede ser iterado
          options.map((e) => const Text('Hola mundo')).toList(), 
          // intento colocar una lista completa dentro de nuestro children y esto no se permite.
          */ // Solucion. Usar el operador Spread
          ...options
              .map((game) => ListTile(
                    title: Text(game),
                    trailing: const Icon(Icons.arrow_forward_ios),
                  ))
              .toList(),
          const Divider(),
          /* ListTile(
            // checar todas las opciones de un widget = ctrl + barraEspaciadora
            // Casos tipicos de un leading = colocar un icono
            leading: Icon(Icons
                .filter_1_sharp), // el widget Icon nos sirve para renderizar iconos
            title: Text('Hola mundo'),
          ) */
        ],
      ),
    );
  }
}
