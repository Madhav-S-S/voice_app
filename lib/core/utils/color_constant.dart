import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color blueGray10063 = fromHex('#63d9d9d9');

  static Color cyanA200 = fromHex('#00ffef');

  static Color blueA700 = fromHex('#0065ff');

  static Color gray900B001 = fromHex('#b023132e');

  static Color lightBlue700 = fromHex('#0086d6');

  static Color black9003f = fromHex('#3f000000');

  static Color lightBlue800 = fromHex('#0072b6');

  static Color lightBlue80001 = fromHex('#007dc7');

  static Color black900 = fromHex('#000000');

  static Color gray20001 = fromHex('#eaeaea');

  static Color blueGray700 = fromHex('#453d72');

  static Color purpleA400 = fromHex('#db00ff');

  static Color gray600 = fromHex('#7a7777');

  static Color gray90002 = fromHex('#4a2020');

  static Color gray90003 = fromHex('#23132e');

  static Color gray500 = fromHex('#949494');

  static Color blueGray400 = fromHex('#888888');

  static Color gray900 = fromHex('#001c2e');

  static Color gray90001 = fromHex('#001d2e');

  static Color gray200 = fromHex('#f0f0f0');

  static Color gray100 = fromHex('#f5f5f5');

  static Color indigo400 = fromHex('#6263b6');

  static Color gray900B0 = fromHex('#b0001c2e');

  static Color cyan900 = fromHex('#004872');

  static Color whiteA700 = fromHex('#ffffff');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
