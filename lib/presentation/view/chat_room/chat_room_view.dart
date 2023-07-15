import 'package:flutter/material.dart';

import '../../../ui_config/front_end_config.dart';
import 'layout/chat_room_body.dart';

class ChatRoomView extends StatelessWidget {
  const ChatRoomView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: FrontEndConfig.kDarkBgColor,
      body: const ChatRoomBody(),
    );
  }
}
