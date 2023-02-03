import 'controller/check_up_controller.dart';
import 'package:flutter/material.dart';
import 'package:maak_app/core/app_export.dart';
import 'package:maak_app/widgets/custom_button.dart';

class CheckUpScreen extends GetWidget<CheckUpController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray100,
            body: Container(
                width: size.width,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          width: size.width,
                          margin: getMargin(bottom: 5),
                          padding: getPadding(
                              left: 23, top: 33, right: 23, bottom: 33),
                          decoration: AppDecoration.gradientCyan100Cyan500
                              .copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder34),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                    width: getHorizontalSize(262.00),
                                    margin: getMargin(top: 29),
                                    child: Text(
                                        "msg_take_a_deep_breath_stop".tr,
                                        maxLines: null,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtMontserratRomanSemiBold24
                                            .copyWith(height: 0.83))),
                                CustomButton(
                                    height: 53,
                                    width: 150,
                                    text: "lbl_go_back".tr,
                                    margin: getMargin(top: 417),
                                    variant: ButtonVariant.OutlineBlack90019,
                                    padding: ButtonPadding.PaddingAll17,
                                    fontStyle: ButtonFontStyle
                                        .MontserratRomanBold15Cyan50001,
                                    onTap: onTapGoback,
                                    alignment: Alignment.center)
                              ]))
                    ]))));
  }

  onTapGoback() {
    Get.toNamed(AppRoutes.patientHomepageScreen);
  }
}
