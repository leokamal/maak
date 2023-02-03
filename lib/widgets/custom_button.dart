import 'package:flutter/material.dart';
import 'package:maak_app/core/app_export.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {this.shape,
      this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.margin,
      this.onTap,
      this.width,
      this.height,
      this.text,
      this.prefixWidget,
      this.suffixWidget});

  ButtonShape? shape;

  ButtonPadding? padding;

  ButtonVariant? variant;

  ButtonFontStyle? fontStyle;

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  VoidCallback? onTap;

  double? width;

  double? height;

  String? text;

  Widget? prefixWidget;

  Widget? suffixWidget;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment!,
            child: _buildButtonWidget(),
          )
        : _buildButtonWidget();
  }

  _buildButtonWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: TextButton(
        onPressed: onTap,
        style: _buildTextButtonStyle(),
        child: _buildButtonWithOrWithoutIcon(),
      ),
    );
  }

  _buildButtonWithOrWithoutIcon() {
    if (prefixWidget != null || suffixWidget != null) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          prefixWidget ?? SizedBox(),
          Text(
            text ?? "",
            textAlign: TextAlign.center,
            style: _setFontStyle(),
          ),
          suffixWidget ?? SizedBox(),
        ],
      );
    } else {
      return Text(
        text ?? "",
        textAlign: TextAlign.center,
        style: _setFontStyle(),
      );
    }
  }

  _buildTextButtonStyle() {
    return TextButton.styleFrom(
      fixedSize: Size(
        getHorizontalSize(width ?? 0),
        getVerticalSize(height ?? 0),
      ),
      padding: _setPadding(),
      backgroundColor: _setColor(),
      shadowColor: _setTextButtonShadowColor(),
      shape: RoundedRectangleBorder(
        borderRadius: _setBorderRadius(),
      ),
    );
  }

  _setPadding() {
    switch (padding) {
      case ButtonPadding.PaddingAll14:
        return getPadding(
          all: 14,
        );
      case ButtonPadding.PaddingAll17:
        return getPadding(
          all: 17,
        );
      case ButtonPadding.PaddingAll11:
        return getPadding(
          all: 11,
        );
      case ButtonPadding.PaddingAll8:
        return getPadding(
          all: 8,
        );
      default:
        return getPadding(
          all: 5,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case ButtonVariant.OutlineBluegray50:
        return ColorConstant.blue500;
      case ButtonVariant.OutlineBluegray50_1:
        return ColorConstant.cyan50001;
      case ButtonVariant.OutlineBlack90019:
        return ColorConstant.whiteA700;
      case ButtonVariant.OutlineBlack90019_2:
        return ColorConstant.cyan50001;
      default:
        return ColorConstant.blue500;
    }
  }

  _setTextButtonShadowColor() {
    switch (variant) {
      case ButtonVariant.OutlineBluegray50:
        return ColorConstant.blueGray50;
      case ButtonVariant.OutlineBluegray50_1:
        return ColorConstant.blueGray50;
      case ButtonVariant.OutlineBlack90019:
        return ColorConstant.black90019;
      case ButtonVariant.OutlineBlack90019_2:
        return ColorConstant.black90019;
      default:
        return ColorConstant.black90019;
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case ButtonShape.Square:
        return BorderRadius.circular(0);
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            10.00,
          ),
        );
    }
  }

  _setFontStyle() {
    switch (fontStyle) {
      case ButtonFontStyle.MontserratRomanBold16:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w700,
        );
      case ButtonFontStyle.MontserratRomanBold15Cyan50001:
        return TextStyle(
          color: ColorConstant.cyan50001,
          fontSize: getFontSize(
            15,
          ),
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w700,
        );
      default:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            15,
          ),
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w700,
        );
    }
  }
}

enum ButtonShape {
  Square,
  RoundedBorder10,
}

enum ButtonPadding {
  PaddingAll5,
  PaddingAll14,
  PaddingAll17,
  PaddingAll11,
  PaddingAll8,
}

enum ButtonVariant {
  OutlineBlack90019_1,
  OutlineBluegray50,
  OutlineBluegray50_1,
  OutlineBlack90019,
  OutlineBlack90019_2,
}

enum ButtonFontStyle {
  MontserratRomanBold15,
  MontserratRomanBold16,
  MontserratRomanBold15Cyan50001,
}
