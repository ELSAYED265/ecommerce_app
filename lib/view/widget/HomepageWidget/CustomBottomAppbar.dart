import 'package:ecommerce_app/controller/homeScreenController.dart';
import 'package:ecommerce_app/controller/homepageController.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

class CustomBottomAppbar extends StatelessWidget {
  const CustomBottomAppbar({
    super.key,
    required this.onPressed,
    required this.text,
    required this.icon,
    required this.isactive,
  });
  final void Function()? onPressed;
  final String text;
  final IconData icon;
  final bool isactive;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      child: Column(
        children: [
          Icon(
            icon,
            size: 30,
            color: isactive == true ? Color(0xfff94449) : Colors.black,
          ),
          Text(
            text,
            style: TextStyle(
              color: isactive == true ? Color(0xfff94449) : Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
