import 'package:flutter/material.dart';
import 'package:spish/presentation/view/notifications/layout/notifications_body.dart';

import '../../../ui_config/front_end_config.dart';

class NotificationsView extends StatelessWidget {
  const NotificationsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: FrontEndConfig.kDarkBgColor,
      body: NotificationsBody(),
    );
  }
}
