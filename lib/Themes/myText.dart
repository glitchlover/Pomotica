// ignore_for_file: prefer_initializing_formals, overridden_fields, use_key_in_widget_constructors, must_be_immutable, file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pomotica/Themes/myColors.dart';

class MyText extends Text {
  MyText(this.data, {this.fontWeight, this.fontSize, this.color}) : super('');

  Color? color = Color.fromARGB(255, 189, 189, 190);
  double? fontSize = 16.0;
  FontWeight? fontWeight = FontWeight.normal;

  @override
  final String data;

  Text techi() {
    return Text(
      data,
      style: textThemeTechi(color, fontWeight, fontSize),
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    );
  }

  Text techiNumber(double? fontSize) {
    return Text(
      data,
      style: textThemeTechi2(color, fontWeight, fontSize),
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    );
  }

  Text text() {
    return Text(
      data,
      style: textThemePoppins(color, fontWeight, fontSize),
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    );
  }

  Text time() {
    fontSize = 40;
    return Text(data, style: textThemeTechi2(color, fontWeight, fontSize));
  }

  Text heading1() {
    fontWeight = FontWeight.bold;
    fontSize = 28;
    return Text(data, style: textThemePoppins(color, fontWeight, fontSize));
  }

  Widget heading2() {
    fontWeight = FontWeight.w600;
    fontSize = 20;
    return Text(data, style: textThemePoppins(color, fontWeight, fontSize));
  }

  Text heading3() {
    fontWeight = FontWeight.w600;
    fontSize = 18;
    return Text(data, style: textThemePoppins(color, fontWeight, fontSize));
  }

  static TextStyle textThemePoppins(
      Color? color, FontWeight? fontWeight, double? fontSize) {
    return GoogleFonts.poppins(
        textStyle: TextStyle(
            color: color,
            fontWeight: fontWeight,
            fontSize: fontSize,
            overflow: TextOverflow.ellipsis));
  }

  static TextStyle textThemeTechi(
      Color? color, FontWeight? fontWeight, double? fontSize) {
    return TextStyle(
        fontFamily: "nokiafc22",
        color: color,
        fontWeight: fontWeight,
        fontSize: fontSize,
        overflow: TextOverflow.ellipsis);
  }

  static TextStyle textThemeTechi2(
      Color? color, FontWeight? fontWeight, double? fontSize) {
    return TextStyle(
        fontFamily: "BrickShapes",
        color: color,
        fontWeight: fontWeight,
        fontSize: fontSize! + 5,
        letterSpacing: 5,
        overflow: TextOverflow.ellipsis);
  }

  String sString() {
    return 'MText(data: $data, color: $color, fontWeight: $fontWeight, fontSize: $fontSize)';
  }
}
