import 'package:flutter/material.dart';
import 'package:spish/navigation_helper/navigation_helper.dart';
import 'package:spish/presentation/view/add_report/add_report_view.dart';
import '../../../ui_config/front_end_config.dart';
import 'layout/reports_body.dart';

class ReportView extends StatelessWidget {
  const ReportView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: FrontEndConfig.kDarkBgColor,

      body: const ReportsBody(),
    );
  }
}
