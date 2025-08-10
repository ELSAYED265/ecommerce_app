import 'package:flutter/material.dart';

class CustomTitleHome extends StatelessWidget {
  const CustomTitleHome({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 6),
      child: Text(
        title,
        style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
      ),
    );
  }
}
