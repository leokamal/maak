import 'controller/plogin_controller.dart';
import 'package:flutter/material.dart';
import 'package:maak_app/core/app_export.dart';
import 'package:maak_app/widgets/custom_button.dart';
import 'package:maak_app/widgets/custom_text_form_field.dart';


// ignore_for_file: must_be_immutable
class PloginBottomsheet extends StatelessWidget {
  TextEditingController inputBGController = TextEditingController();
  PloginBottomsheet(this.controller);

  PloginController controller;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
            width: size.width,
            padding: getPadding(left: 21, top: 58, right: 21, bottom: 58),
            decoration: AppDecoration.fillGray100
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder34),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                      padding: getPadding(left: 7),
                      child: Text("lbl_phone_number".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtMontserratBold15
                              .copyWith(height: 1.27))),
                  CustomTextFormField(
                      width: 304,
                      focusNode: FocusNode(),
                      controller: controller.inputBGController,
                      margin: getMargin(left: 3, top: 7)),

                  Padding(
                      padding: getPadding(left: 7, top: 39),
                      child: Text("lbl_password".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtMontserratBold15
                              .copyWith(height: 1.27))),
                  CustomTextFormField(
                      width: 304,
                      focusNode: FocusNode(),
                      controller: controller.inputBGOneController,
                      margin: getMargin(left: 3, top: 8)),
                  CustomButton(
                      height: 53,
                      width: 184,
                      text: "lbl_login".tr,
                      margin: getMargin(top: 93),
                      variant: ButtonVariant.OutlineBluegray50_1,
                      padding: ButtonPadding.PaddingAll14,
                      fontStyle: ButtonFontStyle.MontserratRomanBold16,
                      onTap: onTapLogin,
                      alignment: Alignment.center),
                  GestureDetector(
                      onTap: () {
                        onTapTxtNotregisteredyet();
                      },
                      child: Container(
                          width: getHorizontalSize(326.00),
                          margin: getMargin(left: 7, top: 15, bottom: 103),
                          decoration: AppDecoration.txtOutlineBlack9003f,
                          child: Text("msg_not_registered_yet".tr,
                              maxLines: null,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtMontserratRegular16Cyan400
                                  .copyWith(
                                      height: 0.75,
                                      decoration: TextDecoration.underline))))
                ])));
  }

  onTapLogin() {
    Get.toNamed(AppRoutes.patientHomepageScreen);
  }

  onTapTxtNotregisteredyet() {
    Get.toNamed(AppRoutes.psignuponeScreen);
  }
}
