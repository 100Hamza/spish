import 'package:flutter/material.dart';
import 'package:spish/ui_config/front_end_config.dart';

import 'layout/manage_user_body.dart';


class ManageUserView extends StatelessWidget {
  const ManageUserView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: FrontEndConfig.kDarkBgColor,
      body: ManageUserBody(),
    );
  }
}
