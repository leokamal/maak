import 'controller/dsignup_controller.dart';
import 'package:flutter/material.dart';
import 'package:maak_app/core/app_export.dart';
import 'package:maak_app/widgets/custom_button.dart';
import 'package:maak_app/widgets/custom_text_form_field.dart';

class DsignupScreen extends GetWidget<DsignupController> {
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
                      Expanded(
                          child: SingleChildScrollView(
                              child: Container(
                                  height: size.height,
                                  width: size.width,
                                  decoration: AppDecoration.outlineBlack9003f1,
                                  child: Stack(
                                      alignment: Alignment.bottomCenter,
                                      children: [
                                        Align(
                                            alignment: Alignment.center,
                                            child: Container(
                                                padding: getPadding(all: 29),
                                                decoration: AppDecoration
                                                    .gradientLightblue400LightblueA700
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .roundedBorder34),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgArrowleft,
                                                          height:
                                                              getSize(24.00),
                                                          width: getSize(24.00),
                                                          onTap: () {
                                                            onTapImgArrowleft();
                                                          }),
                                                      Align(
                                                          alignment:
                                                              Alignment.center,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      top: 14,
                                                                      bottom:
                                                                          686),
                                                              child: Text(
                                                                  "lbl_signup"
                                                                      .tr,
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
                                                height: getVerticalSize(758.00),
                                                width: size.width,
                                                padding: getPadding(
                                                    top: 42, bottom: 42),
                                                decoration: AppDecoration
                                                    .outlineBluegray90014,
                                                child: Stack(
                                                    alignment:
                                                        Alignment.topCenter,
                                                    children: [
                                                      CustomImageView(
                                                          imagePath: ImageConstant
                                                              .imgContainer652x375,
                                                          height:
                                                              getVerticalSize(
                                                                  652.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  375.00),
                                                          alignment: Alignment
                                                              .topCenter),
                                                      Align(
                                                          alignment: Alignment
                                                              .topCenter,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 33,
                                                                      top: 36,
                                                                      right:
                                                                          22),
                                                              child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            left:
                                                                                14),
                                                                        child: Text(
                                                                            "lbl_first_name"
                                                                                .tr,
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.txtMontserratBold15.copyWith(height: 1.27))),
                                                                    CustomTextFormField(
                                                                        width: 304,
                                                                        focusNode: FocusNode(),
                                                                        controller: controller.inputBGController,
                                                                        margin: getMargin(left: 3, top: 7)),
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            left:
                                                                                14,
                                                                            top:
                                                                                5),
                                                                        child: Text(
                                                                            "lbl_last_name"
                                                                                .tr,
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.txtMontserratBold15.copyWith(height: 1.27))),

                                                                    CustomTextFormField(
                                                                        width: 304,
                                                                        focusNode: FocusNode(),
                                                                        controller: controller.inputBGOneController,
                                                                        margin: getMargin(left: 3, top: 8)),
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            left:
                                                                                15,
                                                                            top:
                                                                                4),
                                                                        child: Text(
                                                                            "lbl_phone_number"
                                                                                .tr,
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.txtMontserratBold15.copyWith(height: 1.27))),
                                                                    CustomTextFormField(
                                                                        width: 304,
                                                                        focusNode: FocusNode(),
                                                                        controller: controller.inputBG3Controller,
                                                                        margin: getMargin(left: 3, top: 8)),
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            left:
                                                                                15,
                                                                            top:
                                                                                6),
                                                                        child: Text(
                                                                            "lbl_hospital"
                                                                                .tr,
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.txtMontserratBold15.copyWith(height: 1.27))),
                                                                    CustomTextFormField(
                                                                        width: 304,
                                                                        focusNode: FocusNode(),
                                                                        controller: controller.inputBGTwoController,
                                                                        margin: getMargin(left: 3, top: 2)),
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            left:
                                                                                15,
                                                                            top:
                                                                                8),
                                                                        child: Text(
                                                                            "lbl_speciality"
                                                                                .tr,
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.txtMontserratBold15.copyWith(height: 1.27))),
                                                                    CustomTextFormField(
                                                                        width: 304,
                                                                        focusNode: FocusNode(),
                                                                        controller: controller.inputBGFourController,
                                                                        margin: getMargin(left: 3, top: 5),
                                                                        textInputAction: TextInputAction.done),
                                                                    CustomButton(
                                                                        height:
                                                                            55,
                                                                        width:
                                                                            187,
                                                                        text: "lbl_signup"
                                                                            .tr,
                                                                        margin: getMargin(
                                                                            top:
                                                                                65),
                                                                        variant:
                                                                            ButtonVariant
                                                                                .OutlineBluegray50,
                                                                        padding:
                                                                            ButtonPadding
                                                                                .PaddingAll14,
                                                                        fontStyle:
                                                                            ButtonFontStyle
                                                                                .MontserratRomanBold16,
                                                                        onTap:
                                                                            onTapSignupOne,
                                                                        alignment:
                                                                            Alignment.center)
                                                                  ])))
                                                    ])))
                                      ]))))
                    ]))));
  }

  onTapImgArrowleft() {
    Get.toNamed(AppRoutes.typtofloginScreen);
  }

  onTapSignupOne() {
    Get.toNamed(AppRoutes.doctorHomepageScreen);
  }
}
