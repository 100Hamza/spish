import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

import '../../../elements/custom_text.dart';
import '../../../elements/custome_gradient_text.dart';
import '../../../utils/screen_size.dart';

class CustomGradientOutlinedButton extends StatelessWidget {
  VoidCallback? onPress;
  String? text;
  double height;
  double? width, fontSize;
  double radius;

  CustomGradientOutlinedButton({this.onPress , this.height = 40, this.width , this.fontSize , this.text , this.radius = 10});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: onPress ,
      child: Container(
        width: ScreenSize().width(context, width!),
        height: height,
        decoration: BoxDecoration(
            border: const GradientBoxBorder(
              gradient: LinearGradient(
                  colors: [
                    Color(0xFF4EB879),
                    Color(0xFFEA3EF7),
                  ]
              ),
              width: 2,
            ),
            borderRadius: BorderRadius.circular(radius)
        ),
        alignment: Alignment.center,
        child: CustomGradientText(
            text: text.toString(),
            fontSize: fontSize,
            fontWeight: FontWeight.w700,
            textColor: Colors.white,
            fontFamily: 'Roboto',)
      ),
    );
  }
}
