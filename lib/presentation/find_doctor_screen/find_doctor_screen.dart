import '../find_doctor_screen/widgets/find_doctor_item_widget.dart';
import 'controller/find_doctor_controller.dart';
import 'models/find_doctor_item_model.dart';
import 'package:flutter/material.dart';
import 'package:maak_app/core/app_export.dart';

class FindDoctorScreen extends GetWidget<FindDoctorController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray100,
            body: Container(
                width: size.width,
                padding: getPadding(left: 9, top: 28, right: 9, bottom: 28),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          svgPath: ImageConstant.imgArrowleft,
                          height: getSize(24.00),
                          width: getSize(24.00),
                          onTap: () {
                            onTapImgArrowleft();
                          }),
                      Padding(
                          padding: getPadding(left: 10, top: 17),
                          child: Text("lbl_doctors".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtMontserratMedium24
                                  .copyWith(letterSpacing: 0.24))),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              margin: getMargin(left: 18, top: 12, right: 19),
                              padding: getPadding(
                                  left: 19, top: 14, right: 19, bottom: 14),
                              decoration: AppDecoration.outlineBluegray100
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder10),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                        height: getVerticalSize(12.00),
                                        width: getHorizontalSize(15.00),
                                        margin: getMargin(top: 5, bottom: 7),
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                                getHorizontalSize(7.00)),
                                            border: Border.all(
                                                color:
                                                    ColorConstant.blueGray10001,
                                                width: getHorizontalSize(5.00),
                                                strokeAlign:
                                                    StrokeAlign.center))),
                                    CustomImageView(
                                        svgPath: ImageConstant.imgVideocamera,
                                        height: getVerticalSize(8.00),
                                        width: getHorizontalSize(9.00),
                                        margin: getMargin(top: 16))
                                  ]))),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(left: 12, top: 16, right: 10),
                              child: Obx(() => ListView.builder(
                                  physics: BouncingScrollPhysics(),
                                  shrinkWrap: true,
                                  itemCount: controller.findDoctorModelObj.value
                                      .findDoctorItemList.length,
                                  itemBuilder: (context, index) {
                                    FindDoctorItemModel model = controller
                                        .findDoctorModelObj
                                        .value
                                        .findDoctorItemList[index];
                                    return FindDoctorItemWidget(model);
                                  }))))
                    ]))));
  }

  onTapImgArrowleft() {
    Get.toNamed(AppRoutes.patientHomepageScreen);
  }
}
