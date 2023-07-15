import 'package:flutter/material.dart';
import 'package:spish/ui_config/front_end_config.dart';

import 'layout/ads_managment_body.dart';


class AdsManagementOverView extends StatelessWidget {
  const AdsManagementOverView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: FrontEndConfig.kDarkBgColor,
      body: AdsManagementBody(),
    );
  }
}
