import 'controller/psignuptwo_controller.dart';
import 'package:flutter/material.dart';
import 'package:maak_app/core/app_export.dart';
import 'package:maak_app/widgets/custom_button.dart';

class PsignuptwoScreen extends GetWidget<PsignuptwoController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray100,
            body: Container(
                height: size.height,
                width: size.width,
                child: Stack(children: [
                  Align(
                      alignment: Alignment.center,
                      child: SingleChildScrollView(
                          child: Container(
                              height: size.height,
                              width: size.width,
                              child: Stack(
                                  alignment: Alignment.bottomCenter,
                                  children: [
                                    Align(
                                        alignment: Alignment.topCenter,
                                        child: Container(
                                            width: size.width,
                                            padding: getPadding(
                                                left: 18,
                                                top: 34,
                                                right: 18,
                                                bottom: 34),
                                            decoration: AppDecoration
                                                .gradientCyan100Cyan500
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder34),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgArrowleft,
                                                      height: getSize(24.00),
                                                      width: getSize(24.00),
                                                      onTap: () {
                                                        onTapArrowleft();
                                                      }),
                                                  Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Padding(
                                                          padding: getPadding(
                                                              top: 7,
                                                              bottom: 650),
                                                          child: Text(
                                                              "lbl_signup".tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtMontserratMedium24
                                                                  .copyWith(
                                                                      letterSpacing:
                                                                          0.24))))
                                                ]))),
                                    Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Container(
                                            width: size.width,
                                            decoration: AppDecoration
                                                .outlineBlack9003f1
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder20),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Card(
                                                      clipBehavior:
                                                          Clip.antiAlias,
                                                      elevation: 0,
                                                      margin: EdgeInsets.all(0),
                                                      shape: RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder20),
                                                      child: Container(
                                                          height:
                                                              getVerticalSize(
                                                                  625.00),
                                                          width: size.width,
                                                          padding: getPadding(
                                                              top: 34,
                                                              bottom: 34),
                                                          decoration: AppDecoration
                                                              .outlineBluegray90014
                                                              .copyWith(
                                                                  borderRadius:
                                                                      BorderRadiusStyle
                                                                          .roundedBorder20),
                                                          child: Stack(
                                                              alignment: Alignment
                                                                  .bottomCenter,
                                                              children: [
                                                                CustomImageView(
                                                                    imagePath:
                                                                        ImageConstant
                                                                            .imgContainer545x375,
                                                                    height: getVerticalSize(
                                                                        545.00),
                                                                    width: getHorizontalSize(
                                                                        375.00),
                                                                    alignment:
                                                                        Alignment
                                                                            .center),
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .bottomCenter,
                                                                    child: Padding(
                                                                        padding: getPadding(left: 26, right: 23, bottom: 150),
                                                                        child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                          Padding(
                                                                              padding: getPadding(left: 17),
                                                                              child: Text("lbl_glove_name".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtMontserratBold15.copyWith(height: 1.27))),
                                                                          Container(
                                                                              height: getVerticalSize(44.00),
                                                                              width: getHorizontalSize(325.00),
                                                                              margin: getMargin(top: 4),
                                                                              decoration: BoxDecoration(color: ColorConstant.whiteA700, borderRadius: BorderRadius.circular(getHorizontalSize(12.00)), border: Border.all(color: ColorConstant.blueGray100, width: getHorizontalSize(1.00)))),
                                                                          CustomButton(
                                                                              height: 46,
                                                                              width: 187,
                                                                              text: "lbl_signup".tr,
                                                                              margin: getMargin(top: 81),
                                                                              variant: ButtonVariant.OutlineBluegray50_1,
                                                                              padding: ButtonPadding.PaddingAll11,
                                                                              fontStyle: ButtonFontStyle.MontserratRomanBold16,
                                                                              onTap: onTapSignupOne,
                                                                              alignment: Alignment.center)
                                                                        ])))
                                                              ])))
                                                ])))
                                  ]))))
                ]))));
  }

  onTapArrowleft() {
    Get.toNamed(AppRoutes.psignuponeScreen);
  }

  onTapSignupOne() {
    Get.toNamed(AppRoutes.patientHomepageScreen);
  }
}
