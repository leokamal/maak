import '../doctor_homepage_screen/widgets/listunion_item_widget.dart';
import 'controller/doctor_homepage_controller.dart';
import 'models/listunion_item_model.dart';
import 'package:flutter/material.dart';
import 'package:maak_app/core/app_export.dart';
import 'package:maak_app/presentation/preport_bottomsheet/preport_bottomsheet.dart';
import 'package:maak_app/presentation/preport_bottomsheet/controller/preport_controller.dart';

class DoctorHomepageScreen extends GetWidget<DoctorHomepageController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray100,
            body: Container(
                width: size.width,
                padding: getPadding(left: 13, top: 18, right: 13, bottom: 18),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          svgPath: ImageConstant.imgUser,
                          height: getSize(38.00),
                          width: getSize(38.00),
                          alignment: Alignment.centerRight,
                          onTap: () {
                            onTapImgUser();
                          }),
                      Container(
                          width: getHorizontalSize(153.00),
                          margin: getMargin(left: 6, top: 15),
                          child: Text("msg_patients_lastest".tr,
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtMontserratMedium14
                                  .copyWith(letterSpacing: 0.14))),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              height: getVerticalSize(66.00),
                              width: getHorizontalSize(325.00),
                              margin: getMargin(top: 37),
                              child: Stack(
                                  alignment: Alignment.centerLeft,
                                  children: [
                                    Align(
                                        alignment: Alignment.center,
                                        child: Container(
                                            margin:
                                                getMargin(top: 12, bottom: 10),
                                            padding:
                                                getPadding(left: 9, right: 9),
                                            decoration: AppDecoration
                                                .outlineBlack9003f
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder10),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 78,
                                                          top: 9,
                                                          bottom: 9),
                                                      child: Text(
                                                          "lbl_hessah".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtMontserratMedium20
                                                              .copyWith(
                                                                  height:
                                                                      1.25))),
                                                  Spacer(),
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgClose,
                                                      height: getVerticalSize(
                                                          42.00),
                                                      width: getHorizontalSize(
                                                          37.00),
                                                      margin:
                                                          getMargin(top: 1)),
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgCheckmark,
                                                      height: getSize(37.00),
                                                      width: getSize(37.00),
                                                      margin: getMargin(
                                                          left: 10,
                                                          top: 3,
                                                          bottom: 3))
                                                ]))),
                                    CustomImageView(
                                        imagePath: ImageConstant.imgEllipse11,
                                        height: getSize(66.00),
                                        width: getSize(66.00),
                                        radius: BorderRadius.circular(
                                            getHorizontalSize(33.00)),
                                        alignment: Alignment.centerLeft,
                                        margin: getMargin(left: 5))
                                  ]))),
                      Padding(
                          padding: getPadding(left: 13, top: 15, right: 1),
                          child: Obx(() => ListView.builder(
                              physics: BouncingScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: controller.doctorHomepageModelObj.value
                                  .listunionItemList.length,
                              itemBuilder: (context, index) {
                                ListunionItemModel model = controller
                                    .doctorHomepageModelObj
                                    .value
                                    .listunionItemList[index];
                                return ListunionItemWidget(model,
                                    onTapReport: onTapReport);
                              })))
                    ]))));
  }

  onTapReport() {
    Get.bottomSheet(PreportBottomsheet(Get.put(PreportController())),
        isScrollControlled: true);
  }

  onTapImgUser() {
    Get.toNamed(AppRoutes.dprofilepageScreen);
  }
}
