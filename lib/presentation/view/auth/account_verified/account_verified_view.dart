import 'package:flutter/material.dart';
import 'package:spish/presentation/view/auth/account_verified/layout/account_verified_body.dart';

import '../../../../ui_config/front_end_config.dart';

class AccountVerifiedView extends StatelessWidget {
  const AccountVerifiedView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: FrontEndConfig.kDarkBgColor,
      body: AccountVerifiedBody(),
    );
  }
}
