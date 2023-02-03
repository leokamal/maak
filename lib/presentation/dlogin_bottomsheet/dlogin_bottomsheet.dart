import 'controller/dlogin_controller.dart';
import 'package:flutter/material.dart';
import 'package:maak_app/core/app_export.dart';
import 'package:maak_app/widgets/custom_button.dart';
import 'package:maak_app/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class DloginBottomsheet extends StatelessWidget {
  DloginBottomsheet(this.controller);

  DloginController controller;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
            width: size.width,
            padding: getPadding(left: 22, top: 60, right: 22, bottom: 60),
            decoration: AppDecoration.fillGray100
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder34),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                      padding: getPadding(left: 4),
                      child: Text("lbl_phone_number".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtMontserratBold15
                              .copyWith(height: 1.27))),
                  CustomTextFormField(
                      width: 329,
                      focusNode: FocusNode(),
                      controller: controller.inputBGController,
                      margin: getMargin(top: 7)),
                  Padding(
                      padding: getPadding(left: 4, top: 41),
                      child: Text("lbl_password".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtMontserratBold15
                              .copyWith(height: 1.27))),
                  CustomTextFormField(
                      width: 329,
                      focusNode: FocusNode(),
                      controller: controller.inputBGOneController,
                      margin: getMargin(top: 5),
                      textInputAction: TextInputAction.done),
                  CustomButton(
                      height: 55,
                      width: 183,
                      text: "lbl_login".tr,
                      margin: getMargin(top: 83),
                      variant: ButtonVariant.OutlineBluegray50,
                      padding: ButtonPadding.PaddingAll17,
                      fontStyle: ButtonFontStyle.MontserratRomanBold16,
                      onTap: onTapLogin,
                      alignment: Alignment.center),
                  GestureDetector(
                      onTap: () {
                        onTapTxtNotregisteredyet();
                      },
                      child: Container(
                          width: getHorizontalSize(329.00),
                          margin: getMargin(top: 15, bottom: 94),
                          decoration: AppDecoration.txtOutlineBlack9003f,
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "msg_not_registered_yet2".tr,
                                    style: TextStyle(
                                        color: ColorConstant.lightBlue40001,
                                        fontSize: getFontSize(16),
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.w400,
                                        height: 0.75,
                                        decoration: TextDecoration.underline)),
                                TextSpan(
                                    text: "msg_create_an_account".tr,
                                    style: TextStyle(
                                        color: ColorConstant.lightBlue40001,
                                        fontSize: getFontSize(16),
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.w400,
                                        height: 0.75,
                                        decoration: TextDecoration.underline))
                              ]),
                              textAlign: TextAlign.center)))
                ])));
  }

  onTapLogin() {
    Get.toNamed(AppRoutes.doctorHomepageScreen);
  }

  onTapTxtNotregisteredyet() {
    Get.toNamed(AppRoutes.dsignupScreen);
  }
}
