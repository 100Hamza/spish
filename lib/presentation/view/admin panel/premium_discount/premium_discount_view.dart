import 'package:flutter/material.dart';
import 'package:spish/ui_config/front_end_config.dart';

import 'layout/premium_discount_body.dart';


class PremiumDiscountView extends StatelessWidget {
  const PremiumDiscountView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: FrontEndConfig.kDarkBgColor,
      body: PremiumDiscountBody(),
    );
  }
}
