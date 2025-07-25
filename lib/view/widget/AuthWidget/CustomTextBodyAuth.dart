import 'package:flutter/material.dart';

class CustomtextbodyAuth extends StatelessWidget {
  const CustomtextbodyAuth({super.key, required this.body});
  final String body;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 25),
      child: Text(
        body,
        style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 14),
        textAlign: TextAlign.center,
      ),
    );
  }
}
