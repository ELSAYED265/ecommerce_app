import 'package:ecommerce_app/core/constant/imageAsset.dart';
import 'package:flutter/material.dart';

class Logoauth extends StatelessWidget {
  const Logoauth({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(AppImageAssets.logo, height: 150);
  }
}
