import 'controller/typtoflogin_controller.dart';
import 'package:flutter/material.dart';
import 'package:maak_app/core/app_export.dart';
import 'package:maak_app/presentation/dlogin_bottomsheet/dlogin_bottomsheet.dart';
import 'package:maak_app/presentation/dlogin_bottomsheet/controller/dlogin_controller.dart';
import 'package:maak_app/presentation/plogin_bottomsheet/plogin_bottomsheet.dart';
import 'package:maak_app/presentation/plogin_bottomsheet/controller/plogin_controller.dart';

class TyptofloginScreen extends GetWidget<TyptofloginController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray100,
            body: Container(
                width: size.width,
                padding: getPadding(top: 81),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          width: getHorizontalSize(176.00),
                          child: Text("msg_maak_your_health".tr,
                              maxLines: null,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtMontserratMedium14
                                  .copyWith(letterSpacing: 0.14))),
                      GestureDetector(
                          onTap: () {
                            onTapDoctorOP();
                          },
                          child: Container(
                              width: getHorizontalSize(205.00),
                              margin: getMargin(top: 61, right: 4),
                              padding: getPadding(
                                  left: 74, top: 88, right: 74, bottom: 88),
                              decoration: AppDecoration
                                  .gradientLightblue400LightblueA700
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder10),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                        padding: getPadding(bottom: 9),
                                        child: Text("lbl_doctor".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtMontserratBold15
                                                .copyWith(height: 1.27)))
                                  ]))),
                      GestureDetector(
                          onTap: () {
                            onTapColumnchartheaderone();
                          },
                          child: Container(
                              width: getHorizontalSize(205.00),
                              margin: getMargin(
                                  left: 2, top: 61, right: 2, bottom: 5),
                              padding: getPadding(
                                  left: 72, top: 92, right: 72, bottom: 92),
                              decoration: AppDecoration.gradientCyan500Cyan100
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder10),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("lbl_patient".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtMontserratBold15
                                            .copyWith(height: 1.27))
                                  ])))
                    ]))));
  }

  onTapDoctorOP() {
    Get.bottomSheet(
      DloginBottomsheet(
        Get.put(
          DloginController(),
        ),
      ),
      isScrollControlled: true,
    );
  }

  onTapColumnchartheaderone() {
    Get.bottomSheet(
      PloginBottomsheet(
        Get.put(
          PloginController(),
        ),
      ),
      isScrollControlled: true,
    );
  }
}
