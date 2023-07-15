import 'package:flutter/material.dart';
import 'package:spish/presentation/view/subscribe_to_premium/layout/subscribe_to_premium_body.dart';

import '../../../ui_config/front_end_config.dart';

class SubscribeToPremiumView extends StatelessWidget {
  const SubscribeToPremiumView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: FrontEndConfig.kDarkBgColor,
      body: const SubscribeToPremiumBody(),
    );;
  }
}
