import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:spish/presentation/elements/custom_text.dart';

import '../../../ui_config/front_end_config.dart';
import 'layout/profile_pictures_body.dart';

class ProfilePicView extends StatelessWidget {
  const ProfilePicView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: FrontEndConfig.kDarkBgColor,
        title:  CustomText(
          text: 'profile_picture'.tr(),
          fontSize: 14,
          fontWeight: FontWeight.w700,
          textColor: Colors.white,
          fontFamily: 'Roboto',
        ),
        centerTitle: true,
      ),
      backgroundColor: FrontEndConfig.kDarkBgColor,
      body: const ProfilePicBody(),
    );
  }
}
