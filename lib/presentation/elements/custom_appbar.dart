import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:spish/navigation_helper/navigation_helper.dart';
import 'package:spish/presentation/utils/toast.dart';
import 'package:spish/presentation/view/admin%20panel/home/admin_home.dart';
import 'package:spish/presentation/view/get_started/get_started_view.dart';
import 'package:spish/presentation/view/reports/reports_view.dart';
import '../../ui_config/front_end_config.dart';
import '../utils/screen_size.dart';
import '../view/messages/message_view.dart';
import '../view/profile/profile_view.dart';
import '../view/settings/settings_view.dart';
import '../view/subscribe_to_premium/subscribe_to_premium_view.dart';
import 'custom_text.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: (){
                  // NavigationHelper.pushRoute(context, GetStartedView());
                  NavigationHelper.pushRoute(context, const AdminHome());
                },
                child: SizedBox(
                    height: ScreenSize().height(context, 0.08),
                    width: ScreenSize().height(context, 0.08),
                    child: const Image(
                        image: AssetImage('assets/images/logo.png'))),
              ),
              Row(
                children: [
                  InkWell(
                    onTap: (){
                      NavigationHelper.pushRoute(context, const MessagesView());
                    },
                    child: const Icon(
                      Icons.mark_email_unread,
                      color: FrontEndConfig.kGrayTextColor,
                      size: 34,
                    ),
                  ),
                  SizedBox(
                    width: ScreenSize().width(context, 0.04),
                  ),
                  InkWell(
                    onTap: (){
                      NavigationHelper.pushRoute(context, ProfileView());
                    },
                    child: const CircleAvatar(
                      radius: 18, // Set the radius of the circular avatar
                      backgroundColor: FrontEndConfig
                          .kGrayTextColor, // Set the background image
                    ),
                  ),

                  GestureDetector(
                    onTapDown: (details) {
                      _showPopupMenu(context , details.globalPosition);
                    },
                    child: const Icon(
                      Icons.keyboard_arrow_down_outlined,
                      color: FrontEndConfig.kGrayTextColor,
                      size: 34,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
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

      ],
    );



  }
  void _showPopupMenu(BuildContext context, Offset offset) async {
    double left = offset.dx;
    double top = offset.dy;
    final selectedValue = await showMenu(
      color: FrontEndConfig.kSubscribeCardColor,
      context: context,
      position: RelativeRect.fromLTRB(left, top, 0, 0),
      items: [
        PopupMenuItem(
          value: 'item1',
          child: CustomText(
            text: 'My Profile',
            fontSize: 14,
            fontWeight: FontWeight.w300,
            textColor: FrontEndConfig.kLightWhite,
            fontFamily: 'Roboto',
          ),
        ),
        PopupMenuItem(
          value: 'item2',
          child: CustomText(
            text: 'My Reports',
            fontSize: 14,
            fontWeight: FontWeight.w300,
            textColor: FrontEndConfig.kLightWhite,
            fontFamily: 'Roboto',
          ),
        ),
        PopupMenuItem(
          value: 'item3',
          child: CustomText(
            text: 'Settings',
            fontSize: 14,
            fontWeight: FontWeight.w300,
            textColor: FrontEndConfig.kLightWhite,
            fontFamily: 'Roboto',
          ),
        ),
        PopupMenuItem(
          value: 'item4',
          child: CustomText(
            text: 'Upgrade Account',
            fontSize: 14,
            fontWeight: FontWeight.w300,
            textColor: FrontEndConfig.kLightWhite,
            fontFamily: 'Roboto',
          ),
        ),
        // Add more PopupMenuItems as needed
      ],
      elevation: 8.0,
    );

    // Handle the selected result
    if (selectedValue != null) {
      if (selectedValue == 'item1') {
        NavigationHelper.pushRoute(context, ProfileView());
      } else if (selectedValue == 'item2') {
        NavigationHelper.pushRoute(context, ReportView());
      } else if (selectedValue == 'item3') {
        NavigationHelper.pushRoute(context, SettingsView());
      } else if (selectedValue == 'item4') {
        NavigationHelper.pushRoute(context, SubscribeToPremiumView());
      }
    }
  }

}











