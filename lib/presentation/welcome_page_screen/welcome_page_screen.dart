import 'controller/welcome_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:maak_app/core/app_export.dart';

class WelcomePageScreen extends GetWidget<WelcomePageController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: GestureDetector(
                onTap: () {
                  onTapWelcomepage();
                },
                child: Container(
                    width: size.width,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgImage6,
                              height: getVerticalSize(276.00),
                              width: getHorizontalSize(375.00),
                              margin: getMargin(top: 102))
                        ])))));
  }

  onTapWelcomepage() {
    Get.toNamed(AppRoutes.typtofloginScreen);
  }
}
