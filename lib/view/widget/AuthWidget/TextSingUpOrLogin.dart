import 'package:flutter/material.dart';

class Textsinguporlogin extends StatelessWidget {
  const Textsinguporlogin({
    super.key,
    required this.text1,
    required this.text2,
    this.onTap,
  });
  final String text1;
  final String text2;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text1,
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 12),
        ),
        InkWell(
          onTap: onTap,
          child: Text(
            text2,
            style: TextStyle(
              color: Color(0xffFF8E31),
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
        ),
      ],
    );
  }
}
