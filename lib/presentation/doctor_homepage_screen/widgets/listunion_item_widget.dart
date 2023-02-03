import '../controller/doctor_homepage_controller.dart';
import '../models/listunion_item_model.dart';
import 'package:flutter/material.dart';
import 'package:maak_app/core/app_export.dart';
import 'package:maak_app/widgets/custom_button.dart';

// ignore: must_be_immutable
class ListunionItemWidget extends StatelessWidget {
  ListunionItemWidget(this.listunionItemModelObj, {this.onTapReport});

  ListunionItemModel listunionItemModelObj;

  var controller = Get.find<DoctorHomepageController>();

  VoidCallback? onTapReport;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getVerticalSize(
        81.00,
      ),
      width: getHorizontalSize(
        335.00,
      ),
      margin: getMargin(
        top: 1.5,
        bottom: 1.5,
      ),
      decoration: AppDecoration.outlineBluegray90014,
      child: Stack(
        alignment: Alignment.topCenter,
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
            alignment: Alignment.topCenter,
            child: Padding(
              padding: getPadding(
                left: 12,
                top: 6,
                right: 22,
                bottom: 13,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgEllipse11,
                    height: getVerticalSize(
                      62.00,
                    ),
                    width: getHorizontalSize(
                      65.00,
                    ),
                    radius: BorderRadius.circular(
                      getHorizontalSize(
                        32.00,
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 7,
                      top: 14,
                      bottom: 28,
                    ),
                    child: Text(
                      "lbl_bashayer".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtMontserratMedium15.copyWith(
                        height: 1.27,
                      ),
                    ),
                  ),
                  Spacer(),
                  CustomButton(
                    height: 35,
                    width: 99,
                    text: "lbl_report".tr,
                    margin: getMargin(
                      top: 17,
                      bottom: 10,
                    ),
                    onTap: onTapReport,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
