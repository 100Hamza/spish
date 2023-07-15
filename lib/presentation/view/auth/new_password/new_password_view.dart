import 'package:flutter/material.dart';
import 'package:spish/presentation/view/auth/new_password/layout/new_password_body.dart';

import '../../../../ui_config/front_end_config.dart';

class NewPasswordView extends StatelessWidget {
  const NewPasswordView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: FrontEndConfig.kDarkBgColor,
      body: const NewPasswordBody(),
    );
  }
}
