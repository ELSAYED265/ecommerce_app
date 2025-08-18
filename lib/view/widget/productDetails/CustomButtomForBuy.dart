import 'package:flutter/material.dart';

import '../items/customBottomItems.dart';

class Custombuttomforbuy extends StatelessWidget {
  const Custombuttomforbuy({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustombottomItem(
          text: 'Add to Cart',
          style: TextStyle(color: Colors.black),
          color: Colors.white,
          onPressed: () {},
        ),
        CustombottomItem(
          text: 'Buy Now',
          color: Colors.orange,
          onPressed: () {},
        ),
      ],
    );
  }
}
