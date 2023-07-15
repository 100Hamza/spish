import 'package:flutter/material.dart';

import '../../../../elements/custom_text.dart';

class TabsText extends StatelessWidget {
  String? text;
  TabsText({this.text});

  @override
  Widget build(BuildContext context) {
    return CustomText(
      text: text.toString(),
      fontSize:   10,
      fontWeight: FontWeight.w400,
      fontFamily: 'Roboto',
    );
  }
}
