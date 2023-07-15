import 'package:flutter/material.dart';
import 'package:spish/navigation_helper/navigation_helper.dart';
import 'package:spish/presentation/elements/news_feed_search.dart';
import 'package:spish/presentation/view/chat_room/chat_room_view.dart';
import 'package:spish/presentation/view/notifications/widgets/notifications_list_model.dart';

import '../../../models/messages_model.dart';

class MessagesBody extends StatefulWidget {
  const MessagesBody({Key? key}) : super(key: key);

  @override
  State<MessagesBody> createState() => _MessagesBodyState();
}

class _MessagesBodyState extends State<MessagesBody> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          NewsFeedSearch(
            onPress: (){
              Navigator.pop(context);
            },
              isIcon: true, icon: Icons.arrow_back_sharp),
          Expanded(
            child: ListView.builder(
              itemCount: messagesList.length,
              itemBuilder: (context, index) {
                return NotificationsListModel(
                  onPress: (){
                    NavigationHelper.pushRoute(context, ChatRoomView());
                  },
                  isIcon: messagesList[index].isIcon,
                  isUnreadMessage: messagesList[index].isUnReadMessages,
                  actor: messagesList[index].sender,
                  time: messagesList[index].time,
                  unReadMessage: messagesList[index].unReadMessages,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
