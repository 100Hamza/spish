import 'package:flutter/material.dart';

import '../../ui_config/front_end_config.dart';
import '../utils/screen_size.dart';
import 'custom_text.dart';

class CustomButton extends StatelessWidget {
  String? text, fontFamily;
  double height;
  double? width, fontSize;
  bool isGradient, isIcon;
  IconData? iconData;
  Color? fontColor , shadowColor;
  FontWeight? fontWeight;
  VoidCallback? onPress;
  double radius;
  Color containerColor;


  CustomButton(
  {this.text,
      this.fontFamily,
      this.height = 40,
      this.width,
      this.fontSize,
      this.isGradient = true,
      this.isIcon = true,
      this.iconData,
      this.fontColor,
    this.shadowColor,
    this.fontWeight,
    this.onPress,
    this.radius = 10,
    this.containerColor = Colors.white
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Material(
        elevation: 10,
        borderOnForeground: true,
        shadowColor: shadowColor,
        borderRadius: BorderRadius.all(Radius.circular(radius)),
        type: MaterialType.canvas,
        child: Container(
          height: height,
          width: ScreenSize().width(context, width!),
          decoration: isGradient == false?  BoxDecoration(
              color: containerColor,
              borderRadius: BorderRadius.all(Radius.circular(radius))
          ): BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(radius)),
              gradient: LinearGradient(
                colors: [
                  const Color(0xFF39FF14).withOpacity(0.7),
                  const Color(0xFFFC0082).withOpacity(0.5),
                  const Color(0xFFFC0082).withOpacity(0.7),
                ],
                stops: [0.0, 0.8, 1.0],
              ),
            ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomText(text: text, textColor: fontColor, fontSize: fontSize, fontFamily: fontFamily, fontWeight: fontWeight, ),
              SizedBox(width: isIcon == false? 0 : ScreenSize().width(context, 0.02),),
              SizedBox(child: isIcon==false? null : Icon(iconData , color: Colors.white,))
            ],
          ),
        ),
      ),
    );
  }
}
