import 'package:flutter/material.dart';

import 'custom_text.dart';


class CustomGradientText extends StatelessWidget {
  String? text , fontFamily;
  Color? textColor;
  FontWeight? fontWeight;
  double? fontSize;
  TextAlign? textAlign;
  CustomGradientText({this.text, this.fontSize , this.fontFamily, this.fontWeight, this.textColor, this.textAlign});

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => const LinearGradient(colors: [
        Color(0xFF4EB879),
        Color(0xFFEA3EF7),
      ]).createShader(
        Rect.fromLTRB(4, 0, bounds.width, bounds.height),
      ),
      child: CustomText(
        text: text.toString(),
        fontSize: fontSize,
        fontWeight: fontWeight,
        textColor: Colors.white,
        fontFamily: fontFamily,
      ),
    );
  }
}
