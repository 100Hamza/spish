import 'package:flutter/material.dart';
import 'package:spish/presentation/elements/custom_text.dart';
import 'package:spish/presentation/models/sender_model.dart';
import 'package:spish/presentation/utils/screen_size.dart';
import 'package:spish/presentation/view/chat_setting/widgets/chat_setting_list_tiles.dart';
import 'package:spish/presentation/view/chat_setting/widgets/setting_text.dart';
import 'package:spish/ui_config/front_end_config.dart';


class ChatSettingBody extends StatefulWidget {
  const ChatSettingBody({Key? key}) : super(key: key);

  @override
  State<ChatSettingBody> createState() => _ChatSettingBodyState();
}

class _ChatSettingBodyState extends State<ChatSettingBody> {
  bool toggleValue = false;
  bool fa = true;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: ScreenSize().height(context, 0.003),
            decoration: BoxDecoration(
                gradient: LinearGradient(
              colors: [
                const Color(0xFF39FF14).withOpacity(0.7),
                const Color(0xFFFC0082).withOpacity(0.5),
                const Color(0xFFFC0082).withOpacity(0.7),
              ],
            )),
          ),
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 35,
                  backgroundColor: FrontEndConfig.kSubscribeCardColor,
                ),
                SizedBox(
                  height: ScreenSize().height(context, 0.015),
                ),
                CustomText(
                  text: senderData[0].sender.toString(),
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                  textColor: Colors.white,
                  fontFamily: 'Roboto',
                ),
                SizedBox(
                  height: ScreenSize().height(context, 0.005),
                ),
                CustomText(
                  text: 'New york city, United State',
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                  textColor: Colors.white,
                  fontFamily: 'Roboto',
                ),
                SizedBox(
                  height: ScreenSize().height(context, 0.02),
                ),
                SettingText(settingText: 'Appearance'),
                SizedBox(
                  height: ScreenSize().height(context, 0.01),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 10.0, bottom: 10),
                  decoration: BoxDecoration(
                      color: FrontEndConfig.kSubscribeCardColor,
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: [
                      ChatSettingListTiles(
                        title: 'WallPaper',
                        subtitle: 'App default: Black',
                        icon: Icons.wallpaper_rounded,
                      ),
                      ChatSettingListTiles(
                        title: 'WallPaper',
                        subtitle: 'App default: Black',
                        icon: Icons.format_size_outlined,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: ScreenSize().height(context, 0.01),
                ),
                SettingText(settingText: 'Notification'),
                SizedBox(
                  height: ScreenSize().height(context, 0.01),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: FrontEndConfig.kSubscribeCardColor,
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: [
                      ChatSettingListTiles(
                          title: 'Notifications',
                          subtitle: 'App default: Black',
                          icon: Icons.power_settings_new_outlined,
                          widget: Switch(
                            activeColor:
                                FrontEndConfig.kGetStartedButtonTextColor,
                            activeTrackColor: FrontEndConfig.kActiveToggleColor,
                            value: toggleValue,
                            onChanged: (value) {
                              setState(() {
                                toggleValue = value;
                              });
                            },
                          )),
                      ChatSettingListTiles(
                          title: 'Sound',
                          subtitle: '',
                          icon: Icons.queue_music_sharp),
                    ],
                  ),
                ),
                SizedBox(
                  height: ScreenSize().height(context, 0.01),
                ),
                Container(
                  height: ScreenSize().height(context, 0.1),
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  color: FrontEndConfig.kSubscribeCardColor,
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                          text: 'Clear chats',
                          fontFamily: 'Roboto',
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          textColor: FrontEndConfig.kBlockTextColor),
                      CustomText(
                          text: 'Block Muhammad',
                          fontFamily: 'Roboto',
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          textColor: FrontEndConfig.kBlockTextColor),
                      CustomText(
                          text: 'Unfriend Muhammad',
                          fontFamily: 'Roboto',
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          textColor: FrontEndConfig.kTextFieldFontColor),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
