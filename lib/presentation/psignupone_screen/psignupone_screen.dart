import 'controller/psignupone_controller.dart';
import 'package:flutter/material.dart';
import 'package:maak_app/core/app_export.dart';
import 'package:maak_app/widgets/custom_button.dart';
import 'package:maak_app/widgets/custom_text_form_field.dart';

class PsignuponeScreen extends GetWidget<PsignuponeController> {
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
                                                        onTapImgArrowleft();
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
                                                                  755.00),
                                                          width: size.width,
                                                          padding: getPadding(
                                                              top: 42,
                                                              bottom: 42),
                                                          decoration: AppDecoration
                                                              .outlineBluegray90014
                                                              .copyWith(
                                                                  borderRadius:
                                                                      BorderRadiusStyle
                                                                          .roundedBorder20),
                                                          child: Stack(
                                                              alignment:
                                                                  Alignment
                                                                      .topCenter,
                                                              children: [
                                                                CustomImageView(
                                                                    imagePath:
                                                                        ImageConstant
                                                                            .imgContainer,
                                                                    height: getVerticalSize(
                                                                        671.00),
                                                                    width: getHorizontalSize(
                                                                        375.00),
                                                                    alignment:
                                                                        Alignment
                                                                            .center),
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .topCenter,
                                                                    child: Padding(
                                                                        padding: getPadding(left: 27, top: 38, right: 21),
                                                                        child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                          Padding(
                                                                              padding: getPadding(left: 12),
                                                                              child: Text("lbl_first_name".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtMontserratBold15.copyWith(height: 1.27))),
                                                                          CustomTextFormField(
                                                                              width: 304,
                                                                              focusNode: FocusNode(),
                                                                              controller: controller.inputBGController,
                                                                              margin: getMargin(left: 3, top: 7)),
                                                                          Padding(
                                                                              padding: getPadding(left: 12, top: 5),
                                                                              child: Text("lbl_last_name".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtMontserratBold15.copyWith(height: 1.27))),
                                                                          CustomTextFormField(
                                                                              width: 304,
                                                                              focusNode: FocusNode(),
                                                                              controller: controller.inputBGOneController,
                                                                              margin: getMargin(left: 3, top: 8)),
                                                                          Padding(
                                                                              padding: getPadding(left: 12, top: 5),
                                                                              child: Text("lbl_phone_number".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtMontserratBold15.copyWith(height: 1.27))),
                                                                          CustomTextFormField(
                                                                              width: 304,
                                                                              focusNode: FocusNode(),
                                                                              controller: controller.inputBGTwoController,
                                                                              margin: getMargin(left: 3, top: 2)),
                                                                          Padding(
                                                                              padding: getPadding(left: 12, top: 4),
                                                                              child: Text("lbl_gender".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtMontserratBold15.copyWith(height: 1.27))),
                                                                          CustomTextFormField(
                                                                              width: 304,
                                                                              focusNode: FocusNode(),
                                                                              controller: controller.inputBGFourController,
                                                                              margin: getMargin(left: 3, top: 5),
                                                                              textInputAction: TextInputAction.done),
                                                                          Padding(
                                                                              padding: getPadding(left: 12, top: 7),
                                                                              child: Text("lbl_age".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtMontserratBold15.copyWith(height: 1.27))),
                                                                          CustomTextFormField(
                                                                              width: 304,
                                                                              focusNode: FocusNode(),
                                                                              controller: controller.inputBG3Controller,
                                                                              margin: getMargin(left: 3, top: 8)),
                                                                          Padding(
                                                                              padding: getPadding(left: 12, top: 12),
                                                                              child: Text("msg_emergency_contact".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtMontserratBold15.copyWith(height: 1.27))),
                                                                          CustomTextFormField(
                                                                              width: 304,
                                                                              focusNode: FocusNode(),
                                                                              controller: controller.inputBG5Controller,
                                                                              margin: getMargin(left: 3, top: 8)),
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
                                                                              ButtonVariant.OutlineBluegray50_1,
                                                                              padding:
                                                                              ButtonPadding
                                                                                  .PaddingAll14,
                                                                              fontStyle:
                                                                              ButtonFontStyle
                                                                                  .MontserratRomanBold16,
                                                                              onTap:onTapSignupOne,
                                                                              alignment: Alignment.center)

                                                                        ])))
                                                              ])))
                                                ])))
                                  ]))))
                ]))));
  }

  onTapImgArrowleft() {
    Get.toNamed(AppRoutes.typtofloginScreen);
  }

  onTapRowhome() {
    Get.toNamed(AppRoutes.psignuptwoScreen);
  }
  onTapSignupOne() {
    Get.toNamed(AppRoutes.patientHomepageScreen);
  }
}
