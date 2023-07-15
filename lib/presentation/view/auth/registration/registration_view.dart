import 'package:flutter/material.dart';
import 'package:spish/presentation/view/auth/registration/layout/registration_body.dart';
import 'package:spish/ui_config/front_end_config.dart';

class RegistrationView extends StatelessWidget {
  const RegistrationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: FrontEndConfig.kDarkBgColor,
      body: RegistrationBody(),
    );
  }
}
