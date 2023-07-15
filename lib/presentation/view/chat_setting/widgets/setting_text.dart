import 'package:flutter/material.dart';
import 'package:spish/presentation/elements/custom_text.dart';


class SettingText extends StatelessWidget {
  String? settingText;
  SettingText({this.settingText});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      alignment: Alignment.centerLeft,
      child: CustomText(
        text: settingText.toString(),
        fontSize: 12,
        fontWeight: FontWeight.w700,
        textColor: Colors.white,
        fontFamily: 'Roboto',
      ),
    );
  }
}
