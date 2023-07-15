import 'package:flutter/material.dart';
import 'package:spish/ui_config/front_end_config.dart';

import 'layout/analytics_body.dart';

class AnalyticsView extends StatelessWidget {
  const AnalyticsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: FrontEndConfig.kDarkBgColor,
       body: AnalyticsBody(),
    );
  }
}
