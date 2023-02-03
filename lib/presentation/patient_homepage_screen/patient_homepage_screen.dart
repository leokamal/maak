import 'controller/patient_homepage_controller.dart';
import 'package:flutter/material.dart';
import 'package:maak_app/core/app_export.dart';
import 'package:maak_app/widgets/custom_button.dart';
import 'package:maak_app/presentation/preport_one_bottomsheet/preport_one_bottomsheet.dart';
import 'package:maak_app/presentation/preport_one_bottomsheet/controller/preport_one_controller.dart';

class PatientHomepageScreen extends GetWidget<PatientHomepageController> {
  @override
  Widget build(BuildContext context) {
    final number = '911';
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray100,
            body: Container(
                width: size.width,
                padding: getPadding(left: 17, top: 20, right: 17, bottom: 20),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          svgPath: ImageConstant.imgUser,
                          height: getSize(38.00),
                          width: getSize(38.00),
                          margin: getMargin(right: 6),
                          onTap: () {
                            onTapImgUser();
                          }),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(top: 29),
                              child: Text("lbl_hello_reem".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtMontserratMedium24))),
                      Container(
                          height: getSize(262.00),
                          width: getSize(262.00),
                          margin: getMargin(top: 62, right: 32),
                          child: Stack(alignment: Alignment.center, children: [
                            Align(
                                alignment: Alignment.center,
                                child: Container(
                                    height: getSize(220.00),
                                    width: getSize(220.00),
                                    decoration:
                                        AppDecoration.outlineDeeppurple40042,
                                    child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          Align(
                                              alignment: Alignment.center,
                                              child: Container(
                                                  height: getSize(220.00),
                                                  width: getSize(220.00),
                                                  child:
                                                      CircularProgressIndicator(
                                                          value: 0.5,
                                                          backgroundColor:
                                                              ColorConstant
                                                                  .gray50,
                                                          color: ColorConstant
                                                              .cyan50001))),
                                          Align(
                                              alignment: Alignment.center,
                                              child: Padding(
                                                  padding: getPadding(
                                                      left: 71, right: 73),
                                                  child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        CustomImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgFavorite,
                                                            height:
                                                                getSize(28.00),
                                                            width:
                                                                getSize(28.00)),
                                                        Container(
                                                            width:
                                                                getHorizontalSize(
                                                                    75.00),
                                                            margin: getMargin(
                                                                top: 15),
                                                            child: RichText(
                                                                text: TextSpan(
                                                                    children: [
                                                                      TextSpan(
                                                                          text: "lbl_100"
                                                                              .tr,
                                                                          style: TextStyle(
                                                                              color: ColorConstant.gray900,
                                                                              fontSize: getFontSize(40),
                                                                              fontFamily: 'Montserrat',
                                                                              fontWeight: FontWeight.w500,
                                                                              letterSpacing: 2.00,
                                                                              height: 0.80)),
                                                                      TextSpan(
                                                                          text: "lbl_bpm"
                                                                              .tr,
                                                                          style: TextStyle(
                                                                              color: ColorConstant.gray900,
                                                                              fontSize: getFontSize(14),
                                                                              fontFamily: 'Montserrat',
                                                                              fontWeight: FontWeight.w500,
                                                                              letterSpacing: 2.00,
                                                                              height: 2.29))
                                                                    ]),
                                                                textAlign:
                                                                    TextAlign
                                                                        .center))
                                                      ])))
                                        ]))),
                            CustomImageView(
                                svgPath: ImageConstant.imgGroup,
                                height: getSize(262.00),
                                width: getSize(262.00),
                                alignment: Alignment.center),
                            
                          ])),

                    ])),
            bottomNavigationBar: Padding(
                padding: getPadding(left: 33, right: 25, bottom: 11),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  GestureDetector(
                      onTap: () {
                        onTapColumncalendar();
                      },
                      child: Padding(
                          padding: getPadding(top: 1, bottom: 3),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgCalendar,
                                    height: getVerticalSize(25.00),
                                    width: getHorizontalSize(22.00)),
                                Padding(
                                    padding: getPadding(top: 7),
                                    child: Text("lbl_report".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtMontserratRomanMedium15
                                            .copyWith(height: 1.27)))
                              ]))),
                  Spacer(),
                  GestureDetector(
                      onTap: () {
                        onTapColumnfile();
                      },
                      child: Padding(
                          padding: getPadding(top: 2),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgFile,
                                    height: getSize(26.00),
                                    width: getSize(26.00),
                                    margin: getMargin(right: 29)),
                                Padding(
                                    padding: getPadding(top: 5),
                                    child: Text("lbl_add_doctor".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtMontserratRomanMedium15
                                            .copyWith(height: 1.27)))
                              ]))),
                  GestureDetector(
                      onTap: () {
                        onTapColumnbookmark();
                      },
                      child: Padding(
                          padding: getPadding(left: 41),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgBookmark,
                                    height: getVerticalSize(25.00),
                                    width: getHorizontalSize(19.00)),
                                Padding(
                                    padding: getPadding(top: 8),
                                    child: Text("lbl_checkup".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtMontserratRomanMedium15
                                            .copyWith(height: 1.27)))
                              ])))
                ]))));
  }

  onTapImgUser() {
    Get.toNamed(AppRoutes.pprofilepageScreen);
  }

  onTapColumncalendar() {
    Get.bottomSheet(
      PreportOneBottomsheet(
        Get.put(
          PreportOneController(),
        ),
      ),
      isScrollControlled: true,
    );
  }

  onTapColumnfile() {
    Get.toNamed(AppRoutes.findDoctorScreen);
  }

  onTapColumnbookmark() {
    Get.toNamed(AppRoutes.checkUpScreen);
  }
}
