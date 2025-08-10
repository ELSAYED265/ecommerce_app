import 'package:flutter/material.dart';

import 'CustomTextFormFeildHome.dart';

class CustomAppBarhome extends StatelessWidget {
  const CustomAppBarhome({
    super.key,
    required this.onPressedsearch,
    required this.onPressedIcon,
    required this.hintText,
  });
  final void Function()? onPressedsearch;
  final void Function()? onPressedIcon;
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
        SizedBox(width: 10),
        Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Color(0xffF3F3F3),
            borderRadius: BorderRadius.circular(10),
          ),
          child: IconButton(
            icon: Icon(
              Icons.notifications_active_outlined,
              size: 30,
              color: Colors.grey[600],
            ),

            onPressed: onPressedIcon,
          ),
        ),
      ],
    );
  }
}
