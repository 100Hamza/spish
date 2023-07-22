import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:spish/presentation/models/notifications_model.dart';
import 'package:spish/presentation/view/notifications/widgets/notifications_list_model.dart';
import 'package:spish/ui_config/front_end_config.dart';

import '../../../elements/custom_text.dart';
import '../../../elements/news_feed_search.dart';
import '../../../utils/screen_size.dart';

class NotificationsBody extends StatefulWidget {
  String? actor, react, toWhom, time;
  IconData? icon;

  NotificationsBody(
      {this.actor, this.react, this.time, this.icon, this.toWhom});

  @override
  State<NotificationsBody> createState() => _NotificationsBodyState();
}

class _NotificationsBodyState extends State<NotificationsBody> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          NewsFeedSearch(
              onPress: (){},
              isIcon: true, icon: Icons.arrow_back_sharp),
          Padding(
            padding: const EdgeInsets.only(bottom: 5.0, left: 20, top: 5.0),
            child: Container(
              alignment: Alignment.centerLeft,
              height: 20,
              width: MediaQuery.of(context).size.width,
              child: CustomText(
                text: 'notifications'.tr(),
                fontSize: 12,
                fontWeight: FontWeight.w700,
                textColor: FrontEndConfig.kGrayTextColor,
                fontFamily: 'Roboto',
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: notificationsList.length,
              itemBuilder: (context, index) {
                return NotificationsListModel(
                  onPress: (){},
                  actor: notificationsList[index].actor,
                  toWhom: notificationsList[index].toWhom,
                  react: notificationsList[index].react,
                  time: notificationsList[index].time,
                  icon: notificationsList[index].icon,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
