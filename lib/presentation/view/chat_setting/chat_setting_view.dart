import 'package:flutter/material.dart';
import 'package:spish/presentation/elements/custom_text.dart';
import 'package:spish/ui_config/front_end_config.dart';

import 'layout/chat_setting_body.dart';

class ChatSettingView extends StatelessWidget {
  const ChatSettingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: FrontEndConfig.kDarkBgColor,
      appBar: AppBar(
        backgroundColor: FrontEndConfig.kSubscribeCardColor,
        title:  CustomText(
        text: 'Chat Setting',
        fontSize: 14,
        fontWeight: FontWeight.w700,
        textColor: Colors.white,
        fontFamily: 'Roboto',
      ),
        centerTitle: true,
      ),
      body: ChatSettingBody(),
    );
  }
}
