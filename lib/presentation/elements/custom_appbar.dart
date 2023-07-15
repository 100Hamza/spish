import 'package:flutter/material.dart';
import 'package:spish/navigation_helper/navigation_helper.dart';
import 'package:spish/presentation/view/admin%20panel/home/admin_home.dart';
import 'package:spish/presentation/view/get_started/get_started_view.dart';
import '../../ui_config/front_end_config.dart';
import '../utils/screen_size.dart';
import '../view/messages/message_view.dart';
import '../view/profile/profile_view.dart';

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
                    child: Icon(
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
                    child: CircleAvatar(
                      radius: 18, // Set the radius of the circular avatar
                      backgroundColor: FrontEndConfig
                          .kGrayTextColor, // Set the background image
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
}
