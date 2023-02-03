import 'package:flutter/material.dart';
import 'package:maak_app/core/app_export.dart';

class AppDecoration {
  static BoxDecoration get gradientCyan500Cyan100 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(
            0,
            1.14,
          ),
          end: Alignment(
            0.74,
            0.36,
          ),
          colors: [
            ColorConstant.cyan500,
            ColorConstant.cyan100,
          ],
        ),
      );
  static BoxDecoration get outlineBluegray100 => BoxDecoration(
        color: ColorConstant.whiteA700,
        border: Border.all(
          color: ColorConstant.blueGray100,
          width: getHorizontalSize(
            1.00,
          ),
        ),
      );
  static BoxDecoration get outlineBluegray90014 => BoxDecoration();
  static BoxDecoration get outlineBlack9003f => BoxDecoration(
        color: ColorConstant.whiteA700,
        boxShadow: [
          BoxShadow(
            color: ColorConstant.black9003f,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineDeeppurple40042 => BoxDecoration();
  static BoxDecoration get txtOutlineBlack9003f => BoxDecoration();
  static BoxDecoration get outlineBlack9003f1 => BoxDecoration();
  static BoxDecoration get fillGray100 => BoxDecoration(
        color: ColorConstant.gray100,
      );
  static BoxDecoration get gradientLightblue400LightblueA700 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(
            0.75,
            0.37,
          ),
          end: Alignment(
            0.37,
            0.79,
          ),
          colors: [
            ColorConstant.lightBlue400,
            ColorConstant.lightBlueA700,
          ],
        ),
      );
  static BoxDecoration get gradientCyan100Cyan500 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(
            0,
            1.14,
          ),
          end: Alignment(
            0.74,
            0.36,
          ),
          colors: [
            ColorConstant.cyan100,
            ColorConstant.cyan500,
          ],
        ),
      );
}

class BorderRadiusStyle {
  static BorderRadius circleBorder67 = BorderRadius.circular(
    getHorizontalSize(
      67.00,
    ),
  );

  static BorderRadius roundedBorder34 = BorderRadius.circular(
    getHorizontalSize(
      34.00,
    ),
  );

  static BorderRadius roundedBorder10 = BorderRadius.circular(
    getHorizontalSize(
      10.00,
    ),
  );

  static BorderRadius roundedBorder20 = BorderRadius.circular(
    getHorizontalSize(
      20.00,
    ),
  );
}
