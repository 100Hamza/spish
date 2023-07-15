import 'package:flutter/material.dart';

import '../../../../elements/custom_text.dart';


class CurvedButton extends StatelessWidget {
  Color? borderColor ,textColor;
  String? text;
  double fontSize;
  FontWeight fontWeight;
  VoidCallback? onPress;
  CurvedButton({this.text ,this.textColor , this.borderColor , this.fontSize = 15 , this.fontWeight = FontWeight.w900 , this.onPress});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 5 , horizontal: 15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(
              color: borderColor!,
            )
        ),
        child: CustomText(
          text: text.toString(),
          fontSize:   fontSize,
          fontWeight: fontWeight,
          fontFamily: 'Roboto',
          textColor: textColor,
        ),
      ),
    );
  }
}
