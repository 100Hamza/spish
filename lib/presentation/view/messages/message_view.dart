import 'package:flutter/material.dart';

import '../../../ui_config/front_end_config.dart';

import 'layout/messages_body.dart';


class MessagesView extends StatelessWidget {
  const MessagesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: FrontEndConfig.kDarkBgColor,
      body: MessagesBody(),
    );
  }
}
