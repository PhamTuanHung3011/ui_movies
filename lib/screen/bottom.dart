

import 'package:flutter/material.dart';

class BottomScreen extends StatelessWidget {
  String? text;
  IconData iconData;
  BottomScreen(this.text, this.iconData);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children:  [
            Icon(iconData),
            Text(text!),
          ],
        )
      ],
    );
  }
}
