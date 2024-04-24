// Generar mi estructura basica de forma rápido: fl-screen + TAB
import 'package:flutter/material.dart';

import 'package:fl_components/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        /* EdgeInstet.
          + symmetric = misma separación de lado izq y der
          */
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        children: const [
          CustomCardType1(),
          SizedBox(height: 20),
          CustomCardType2(
            imageUrl:
                'https://photographylife.com/wp-content/uploads/2017/01/What-is-landscape-photography.jpg',
            name: 'Desert',
          ),
          SizedBox(height: 20),
          CustomCardType2(
            imageUrl:
                'https://i.pinimg.com/originals/01/bb/e6/01bbe6c65d7996606f0cc2ca0f81bcb2.jpg',
          ),
        ],
      ),
    );
  }
}
