import 'controller/preport_controller.dart';
import 'package:flutter/material.dart';
import 'package:maak_app/core/app_export.dart';
import 'package:maak_app/widgets/custom_button.dart';

// ignore_for_file: must_be_immutable
class PreportBottomsheet extends StatelessWidget {
  PreportBottomsheet(this.controller);

  PreportController controller;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: size.width,
        padding: getPadding(
          left: 93,
          top: 219,
          right: 93,
          bottom: 219,
        ),
        decoration: AppDecoration.fillGray100.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder34,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomButton(
              height: 53,
              width: 184,
              text: "lbl_get_report".tr,
              margin: getMargin(
                top: 126,
              ),
              variant: ButtonVariant.OutlineBluegray50_1,
              padding: ButtonPadding.PaddingAll17,
              fontStyle: ButtonFontStyle.MontserratRomanBold16,
            ),
          ],
        ),
      ),
    );
  }
}
