import 'package:flutter/material.dart';

class CustombottomAuth extends StatelessWidget {
  const CustombottomAuth({
    super.key,
    this.onPressed,
    required this.text,
    required this.color,
    this.style,
  });
  final void Function()? onPressed;
  final String text;
  final Color color;
  final TextStyle? style;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
      child: MaterialButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        padding: EdgeInsets.symmetric(vertical: 17),
        onPressed: onPressed,
        child: Text(text, style: style),
        color: color,
      ),
    );
  }
}
