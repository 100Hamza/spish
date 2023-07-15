

import 'package:flutter/cupertino.dart';

import '../../../../../../ui_config/front_end_config.dart';
import '../../../../../elements/custom_text.dart';

class Indicator extends StatelessWidget {
  const Indicator({
    super.key,
    required this.color,
    required this.text,
    required this.isSquare,
    this.size = 16,
    this.textColor = FrontEndConfig.kCommentTitleTextColor,
    this.fontSize = 8
  });
  final Color color;
  final String text;
  final bool isSquare;
  final double size , fontSize;
  final Color textColor;


  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          width: size,
          height: size,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: color,
          ),
        ),
        const SizedBox(
          width: 4,
        ),
        CustomText(
          text: text,
          fontSize: fontSize,
          fontWeight: FontWeight.w500,
          fontFamily: 'Roboto',
          textColor: textColor,
        ),
      ],
    );
  }
}