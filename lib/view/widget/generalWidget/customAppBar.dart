import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

import '../HomepageWidget/CustomTextFormFeildHome.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.onPressedsearch,
    this.onPressedNotfi,
    required this.hintText,
    this.onPressedFavori,
  });
  final void Function()? onPressedsearch;
  final void Function()? onPressedNotfi;
  final void Function()? onPressedFavori;

  final String hintText;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomtextformfeildHome(
            hintText: hintText,
            icon: Icons.search_rounded,
            onPressedsearch: onPressedsearch,
          ),
        ),
        SizedBox(width: 7),
        Container(
          padding: EdgeInsets.all(8),
          margin: EdgeInsets.only(left: 7),
          decoration: BoxDecoration(
            color: Color(0xffF3F3F3),
            borderRadius: BorderRadius.circular(10),
          ),
          child: IconButton(
            icon: Icon(
              Icons.favorite_outline,
              size: 30,
              color: Colors.grey[600],
            ),

            onPressed: onPressedFavori,
          ),
        ),
      ],
    );
  }
}
