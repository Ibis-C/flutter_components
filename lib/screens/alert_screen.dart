import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  void displayDialogIOS(BuildContext context) {
    showCupertinoDialog(
      barrierDismissible: true,
      context: context,
      builder: ((context) {
        return CupertinoAlertDialog(
          title: const Text('Titulo'),
          content: const Column(
            //Los hijos determinan el tamaño de la alerta
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Este es el contenido de la alerta'),
              SizedBox(height: 10),
              FlutterLogo(size: 100)
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Cancelar'),
            )
          ],
        );
      }),
    );
  }

  void displayDialogAndroid(BuildContext context) {
    // context. Si se esta trabajando con un StatefulWidgets, el context esta disponible a lo largo de todo el State del StatefulWidget.
    showDialog(
      //Poder cerrar el dialogo cuando hacemos clic en la sombra
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return AlertDialog(
          elevation: 5,
          title: const Text('Título'),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusDirectional.circular(15),
          ),
          content: const Column(
            //Los hijos determinan el tamaño de la alerta
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Este es el contenido de la alerta'),
              SizedBox(height: 10),
              FlutterLogo(size: 100)
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Cancelar'),
            )
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          //Aquí si tengo el contexto y este se le pasa
          // onPressed: () => displayDialogAndroid(context),
          onPressed: () => displayDialogIOS(context),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Text(
              'Mostrar alerta',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.close),
        onPressed: () {
          //Nos envia a la ultima pantalla que esta en el stack de cartas
          Navigator.pop(context);
        },
      ),
    );
  }
}
