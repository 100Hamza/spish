import 'package:flutter/material.dart';

import '../../../../ui_config/front_end_config.dart';
import '../../../elements/custom_text.dart';

class Followers extends StatelessWidget {
  const Followers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: FrontEndConfig.kDarkBgColor,
      body: Center(
        child: CustomText(
          text: 'Followers',
          fontSize:   20,
          fontWeight: FontWeight.w400,
          fontFamily: 'Roboto',
          textColor: FrontEndConfig.kLightPink,
        ),
      ),
    );
  }
}
