import 'package:flutter/material.dart';
import 'package:spish/ui_config/front_end_config.dart';

import 'layout/profile_body.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: FrontEndConfig.kDarkBgColor,
      body: ProfileBody(),
    );
  }
}
