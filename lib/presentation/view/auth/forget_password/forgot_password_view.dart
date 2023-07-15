import 'package:flutter/material.dart';
import 'package:spish/presentation/view/auth/forget_password/layout/forgot_password_body.dart';

import '../../../../ui_config/front_end_config.dart';

class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: FrontEndConfig.kDarkBgColor,
      body: const ForgotPasswordBody(),
    );
  }
}
