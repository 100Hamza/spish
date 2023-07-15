import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  String? text , fontFamily;
  Color? textColor;
  FontWeight? fontWeight;
  double? fontSize;
  TextAlign? textAlign;
  CustomText({this.text, this.fontSize , this.fontFamily, this.fontWeight, this.textColor, this.textAlign});

  @override
  Widget build(BuildContext context) {
    return Text(
        text.toString(),
        style: TextStyle(
        color: textColor,
        fontSize: fontSize,
        fontFamily: fontFamily.toString(),
        fontWeight: fontWeight));
  }
}
