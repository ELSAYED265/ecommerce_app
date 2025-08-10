import 'package:ecommerce_app/core/constant/Color.dart';
import 'package:flutter/material.dart';

class CustomtextformfeildHome extends StatelessWidget {
  const CustomtextformfeildHome({
    super.key,
    required this.hintText,
    required this.icon,
    this.onPressedsearch,
  });
  final String hintText;

  final IconData icon;
  final void Function()? onPressedsearch;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(20),
        border: InputBorder.none, // 👈 كده يشيل الخط
        prefixIcon: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: IconButton(
            icon: Icon(icon, size: 30, color: Colors.grey[500]),
            onPressed: onPressedsearch,
          ),
        ),
        focusedBorder: buildBorder(),
        filled: true,
        fillColor: Color(0xffF3F3F3),
        enabledBorder: buildBorder(),
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.grey[500], fontSize: 20),
      ),
    );
  }

  OutlineInputBorder buildBorder([Color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: Color ?? Colors.white),
    );
  }
}
