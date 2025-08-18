import 'package:ecommerce_app/core/class/statusRequest.dart';
import 'package:ecommerce_app/core/constant/imageAsset.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Handlingdataview extends StatelessWidget {
  const Handlingdataview({
    super.key,
    required this.statusRequest,
    required this.widget,
  });
  final StatusRequest statusRequest;
  final Widget widget;
  @override
  Widget build(BuildContext context) {
    return statusRequest == StatusRequest.loading
        ? Center(
            child: Lottie.asset(
              AppImageAssets.TrailLoading,
              width: 150,
              height: 150,
            ),
          )
        : statusRequest == StatusRequest.internetfailer
        ? Center(child: Lottie.asset(AppImageAssets.internet))
        : statusRequest == StatusRequest.severfailer
        ? Center(child: Lottie.asset(AppImageAssets.server))
        : statusRequest == StatusRequest.failer
        ? Center(child: Lottie.asset(AppImageAssets.empty))
        : widget;
  }
}

class HandlingdataRequest extends StatelessWidget {
  const HandlingdataRequest({
    super.key,
    required this.statusRequest,
    required this.widget,
  });
  final StatusRequest statusRequest;
  final Widget widget;
  @override
  Widget build(BuildContext context) {
    return statusRequest == StatusRequest.loading
        ? Center(
            child: Lottie.asset(
              AppImageAssets.TrailLoading,
              width: 150,
              height: 150,
            ),
          )
        : statusRequest == StatusRequest.internetfailer
        ? Center(child: Lottie.asset(AppImageAssets.internet))
        : statusRequest == StatusRequest.severfailer
        ? Center(child: Lottie.asset(AppImageAssets.server))
        : widget;
  }
}
