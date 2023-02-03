import '../controller/find_doctor_controller.dart';
import '../models/find_doctor_item_model.dart';
import 'package:flutter/material.dart';
import 'package:maak_app/core/app_export.dart';
import 'package:maak_app/widgets/custom_button.dart';

// ignore: must_be_immutable
class FindDoctorItemWidget extends StatelessWidget {
  FindDoctorItemWidget(this.findDoctorItemModelObj);

  FindDoctorItemModel findDoctorItemModelObj;

  var controller = Get.find<FindDoctorController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        height: getVerticalSize(
          81.00,
        ),
        width: getHorizontalSize(
          335.00,
        ),
        decoration: AppDecoration.outlineBluegray90014,
        child: Stack(
          alignment: Alignment.center,
          children: [
            CustomImageView(
              svgPath: ImageConstant.imgUnion,
              height: getVerticalSize(
                77.00,
              ),
              width: getHorizontalSize(
                335.00,
              ),
              alignment: Alignment.topCenter,
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: getPadding(
                  left: 9,
                  top: 7,
                  right: 7,
                  bottom: 8,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgEllipse11,
                      height: getSize(
                        66.00,
                      ),
                      width: getSize(
                        66.00,
                      ),
                      radius: BorderRadius.circular(
                        getHorizontalSize(
                          33.00,
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 10,
                        bottom: 19,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "lbl_dr_alanoud".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtMontserratMedium15.copyWith(
                              height: 1.27,
                            ),
                          ),
                          Text(
                            "lbl_cardiologist".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtMontserratMedium13.copyWith(
                              height: 1.23,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    CustomButton(
                      height: 35,
                      width: 99,
                      text: "lbl_add".tr,
                      margin: getMargin(
                        top: 16,
                        bottom: 15,
                      ),
                      variant: ButtonVariant.OutlineBluegray50_1,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
