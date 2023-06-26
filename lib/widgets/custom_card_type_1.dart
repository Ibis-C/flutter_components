import 'package:flutter/material.dart';

import 'package:fl_components/theme/app_theme.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            leading: Icon(
              Icons.school_outlined,
              color: AppTheme.primary,
            ),
            title: const Text('Soy un título'),
            subtitle: const Text(
                'Reprehenderit consectetur esse nulla cillum consequat laborum sint commodo qui labore. Amet eiusmod sint quis consectetur amet minim id ex enim amet irure non dolor. Voluptate amet ut deserunt dolore cillum.'),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text('Cancel'),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text('Ok'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
