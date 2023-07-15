import 'package:flutter/material.dart';
import 'package:spish/presentation/view/auth/login/layout/login_body.dart';

import '../../../../ui_config/front_end_config.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: FrontEndConfig.kDarkBgColor,
      body: const LoginBody()
    );
  }
}
