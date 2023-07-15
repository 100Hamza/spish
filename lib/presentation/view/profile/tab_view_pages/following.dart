import 'package:flutter/material.dart';

import '../../../../ui_config/front_end_config.dart';
import '../../../elements/custom_text.dart';

class Following extends StatelessWidget {
  const Following({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: FrontEndConfig.kDarkBgColor,
      body: Center(
        child: CustomText(
          text: 'Following',
          fontSize:   20,
          fontWeight: FontWeight.w400,
          fontFamily: 'Roboto',
          textColor: FrontEndConfig.kLightPink,
        ),
      ),
    );
  }
}
