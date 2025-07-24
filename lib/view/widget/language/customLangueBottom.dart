import 'package:flutter/material.dart';

import '../../../core/constant/Color.dart';
import '../generalWidget/customButton.dart';

class Customlanguebottom extends StatelessWidget {
  const Customlanguebottom({super.key, required this.text, this.onPressed});
  final String text;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 170),
      child: Container(
        width: double.infinity,
        child: Custombottom(
          text: text,
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          color: AppColor.kPrimaryColor,
          onPressed: onPressed,
        ),
      ),
    );
  }
}
