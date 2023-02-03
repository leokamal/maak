import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color blueGray100 = fromHex('#d0d3d8');

  static Color blueGray50 = fromHex('#ececf1');

  static Color blue500 = fromHex('#14a1ff');

  static Color blueGray10001 = fromHex('#d8dae0');

  static Color gray900 = fromHex('#00093e');

  static Color gray90001 = fromHex('#171625');

  static Color blueGray90014 = fromHex('#14323247');

  static Color deepPurple40042 = fromHex('#429062bd');

  static Color lightBlue400 = fromHex('#2abfff');

  static Color black9003f = fromHex('#3f000000');

  static Color gray50 = fromHex('#fbfcfd');

  static Color gray100 = fromHex('#f2f6f9');

  static Color lightBlue40000 = fromHex('#002bbfff');

  static Color cyan100 = fromHex('#9febeb');

  static Color green30038 = fromHex('#3878e381');

  static Color cyan50001 = fromHex('#07c3ce');

  static Color black900 = fromHex('#000000');

  static Color lightBlueA700 = fromHex('#0084ff');

  static Color black90019 = fromHex('#19000000');

  static Color whiteA700 = fromHex('#ffffff');

  static Color cyan400 = fromHex('#29cace');

  static Color cyan500 = fromHex('#02c2cd');

  static Color lightBlue40001 = fromHex('#2bbfff');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
