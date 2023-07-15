import 'package:flutter/material.dart';
import 'package:spish/presentation/view/add_report/layout/add_report_body.dart';

import '../../../ui_config/front_end_config.dart';


class AddReportView extends StatelessWidget {
  const AddReportView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: FrontEndConfig.kDarkBgColor,
      body: const AddReportBody(),
    );
  }
}
