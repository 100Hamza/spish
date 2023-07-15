import 'package:flutter/material.dart';
import 'package:spish/presentation/view/auth/verfiy_account/layout/verify_account_body.dart';

import '../../../../ui_config/front_end_config.dart';

class VerifyAccountView extends StatelessWidget {
  const VerifyAccountView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: FrontEndConfig.kDarkBgColor,
      body: VerifyAccountBody(),);
  }
}
