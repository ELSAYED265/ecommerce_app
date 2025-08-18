import 'package:flutter/material.dart';

class ProductReview extends StatelessWidget {
  const ProductReview({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.star, color: Colors.orange, size: 26),
        Icon(Icons.star, color: Colors.orange, size: 26),
        Icon(Icons.star, color: Colors.orange, size: 26),
        Icon(Icons.star, color: Colors.orange, size: 26),
        Icon(Icons.star_half_sharp, color: Colors.orange, size: 26),
        SizedBox(width: 6),
        Text(
          "4.5",
          style: TextStyle(
            fontFamily: "sans",
            color: Colors.grey[700],
            fontSize: 18,
          ),
        ),
        Text(
          "(120Review)",
          style: TextStyle(
            fontFamily: "sans",
            color: Colors.grey[700],
            fontSize: 15,
          ),
        ),
      ],
    );
  }
}
