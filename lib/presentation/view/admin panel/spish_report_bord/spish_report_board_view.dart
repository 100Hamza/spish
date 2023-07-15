import 'package:flutter/material.dart';
import 'package:spish/presentation/view/admin%20panel/spish_report_bord/layout/spish_report_board_body.dart';
import 'package:spish/ui_config/front_end_config.dart';

class SpishReportBoardView extends StatelessWidget {
  const SpishReportBoardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: FrontEndConfig.kDarkBgColor,
      body: SpishReportBoardBody(),
    );
  }
}
