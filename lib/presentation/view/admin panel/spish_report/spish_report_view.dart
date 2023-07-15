import 'package:flutter/material.dart';

import '../../../../ui_config/front_end_config.dart';
import 'layout/spish_report_body.dart';

class SpishReportView extends StatelessWidget {
  const SpishReportView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: FrontEndConfig.kDarkBgColor,
      body: SpishReportBody(),
    );
  }
}
