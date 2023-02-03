import 'controller/pprofilepage_controller.dart';
import 'package:flutter/material.dart';
import 'package:maak_app/core/app_export.dart';
import 'package:maak_app/widgets/app_bar/appbar_image.dart';
import 'package:maak_app/widgets/app_bar/custom_app_bar.dart';
import 'package:maak_app/widgets/custom_button.dart';
import 'package:maak_app/widgets/custom_text_form_field.dart';
import 'package:maak_app/widgets/app_bar/appbar_title.dart';

class PprofilepageScreen extends GetWidget<PprofilepageController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.gray100,
            appBar: CustomAppBar(
                height: getVerticalSize(56.00),
                leadingWidth: 34,
                leading: AppbarImage(
                    height: getSize(24.00),
                    width: getSize(24.00),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 10, top: 15, bottom: 16),
                    onTap: onTapArrowleft),
                actions: [
                  Padding(
                      padding:
                          getPadding(left: 251, top: 6, right: 19, bottom: 6),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CustomImageView(
                                svgPath: ImageConstant
                                    .imgMinimize,
                                height: getSize(24.00),
                                width: getSize(24.00),
                                onTap: () {
                                  onTapImgArrowleft();
                                }),
                            AppbarTitle(text: "lbl_logout".tr)
                          ]))
                ]),
            body: Container(
                width: size.width,
                padding: getPadding(left: 34, top: 27, right: 34, bottom: 27),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgEllipse11,
                          height: getVerticalSize(131.00),
                          width: getHorizontalSize(134.00),
                          radius:
                              BorderRadius.circular(getHorizontalSize(67.00)),
                          alignment: Alignment.center),
                      Padding(
                          padding: getPadding(left: 7, top: 14),
                          child: Text("lbl_age".tr,
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
                          padding: getPadding(left: 8, top: 10),
                          child: Text("lbl_blood_type".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtMontserratBold15
                                  .copyWith(height: 1.27))),
                      CustomTextFormField(
                          width: 304,
                          focusNode: FocusNode(),
                          controller: controller.inputBGOneController,
                          margin: getMargin(left: 3, top: 8)),
                      Padding(
                          padding: getPadding(left: 8, top: 7),
                          child: Text("lbl_phone_number2".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtMontserratBold15
                                  .copyWith(height: 1.27))),
                      CustomTextFormField(
                          width: 304,
                          focusNode: FocusNode(),
                          controller: controller.inputBGTwoController,
                          margin: getMargin(left: 3, top: 2)),
                      Container(
                          height: getVerticalSize(19.00),
                          width: getHorizontalSize(157.00),
                          margin: getMargin(left: 8, top: 17),
                          child: Stack(alignment: Alignment.center, children: [
                            Align(
                                alignment: Alignment.center,
                                child: Text("msg_emergency_contact2".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtMontserratBold15
                                        .copyWith(height: 1.27))),
                            Align(
                                alignment: Alignment.center,
                                child: Text("msg_emergency_contact2".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtMontserratBold15
                                        .copyWith(height: 1.27)))
                          ])),
                      Container(
                          height: getVerticalSize(40.00),
                          width: getHorizontalSize(304.00),
                          margin: getMargin(left: 1, top: 5),
                          decoration: BoxDecoration(
                              color: ColorConstant.whiteA700,
                              borderRadius: BorderRadius.circular(
                                  getHorizontalSize(12.00)),
                              border: Border.all(
                                  color: ColorConstant.blueGray100,
                                  width: getHorizontalSize(1.00)))),
                      Padding(
                          padding: getPadding(left: 8, top: 10),
                          child: Text("lbl_phone_number2".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtMontserratBold15
                                  .copyWith(height: 1.27))),
                      CustomTextFormField(
                          width: 304,
                          focusNode: FocusNode(),
                          controller: controller.inputBGFourController,
                          margin: getMargin(left: 3, top: 5),
                          textInputAction: TextInputAction.done),
                      CustomButton(
                          height: 50,
                          width: 150,
                          text: "lbl_save".tr,
                          margin: getMargin(top: 35, bottom: 5),
                          variant: ButtonVariant.OutlineBlack90019_2,
                          padding: ButtonPadding.PaddingAll14,
                          onTap: onTapSave,
                          alignment: Alignment.center)
                    ]))));
  }

  onTapSave() {
    Get.toNamed(AppRoutes.patientHomepageScreen);
  }

onTapArrowleft() {
  Get.toNamed(AppRoutes.patientHomepageScreen);
}

onTapImgArrowleft() {
  Get.toNamed(AppRoutes.typtofloginScreen);
}
}
