import 'package:flutter/material.dart';

import 'package:spish/ui_config/front_end_config.dart';

import 'layout/overview_body.dart';


class OverViewView extends StatelessWidget {
  const OverViewView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: FrontEndConfig.kDarkBgColor,
      body: const OverViewBody(),
    );
  }
}
