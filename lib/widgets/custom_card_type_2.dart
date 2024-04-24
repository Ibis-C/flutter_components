import 'package:flutter/material.dart';

import 'package:fl_components/theme/app_theme.dart';

class CustomCardType2 extends StatelessWidget {
  const CustomCardType2({
    super.key,
    required this.imageUrl,
    this.name,
  });

  final String imageUrl;
  final String? name;

  @override
  Widget build(BuildContext context) {
    return Card(
      //si se sale de la forma de la tarjeta, este lo corta o lo adapta a la forma de la tarjeta.
      clipBehavior: Clip.antiAlias,

      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 30,
      shadowColor: AppTheme.primary.withOpacity(0.5),
      child: Column(
        children: [
          //Usar un Widget que sirva para mostrar una imagen
          FadeInImage(
            //La imagen tarde un poco de tiempo en apareces cuando se entra a la pantalla que contiene este widget, por lo que hay que usar un widget que
            image: NetworkImage(imageUrl),
            placeholder: const AssetImage('assets/jar-loading.gif'),

            //Colocar la imagen dentro del todo el ancho posible en pantalla.
            //El double.infinity toma todoel espacio de la pantalla.
            //Esto es relativo, ya que si se pone en un widget donde el ancho es
            //flexibe (como un Row) esto da error, porque es un valor infinito.
            //Entonces, el double.infinity funciona en widgets donde el width es
            //LIMITADO.
            width: double.infinity,
            height: 230,

            //como se aloja la imagen en el espacio.
            fit: BoxFit.fill,

            fadeInDuration: const Duration(milliseconds: 300),
          ),

          if (name != null)
            Container(
              alignment: AlignmentDirectional.centerEnd,
              padding: const EdgeInsets.only(right: 10, top: 10, bottom: 10),
              child: Text(name!),
            )
        ],
      ),
    );
  }
}
