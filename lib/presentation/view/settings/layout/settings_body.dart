import 'package:flutter/material.dart';
import 'package:spish/presentation/elements/custom_appbar.dart';
import 'package:spish/presentation/elements/custom_button.dart';
import 'package:spish/presentation/utils/screen_size.dart';
import 'package:spish/presentation/view/settings/layout/widgets/custom_list_tiles.dart';
import 'package:spish/ui_config/front_end_config.dart';

class SettingsBody extends StatefulWidget {
  const SettingsBody({Key? key}) : super(key: key);

  @override
  State<SettingsBody> createState() => _SettingsBodyState();
}

class _SettingsBodyState extends State<SettingsBody> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
         Column(
           children: [
             const CustomAppBar(),
             SizedBox(height: ScreenSize().height(context, 0.04),),
             CustomListTiles(title: 'Change Subscription Plan', subtitle: '',),
             CustomListTiles(title: 'Change Language Setting', subtitle: 'English (US)',),
             CustomListTiles(title: 'Privacy Setting', subtitle: 'Name, Email and password Change',),
           ],
         ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0 , vertical: 30),
            child: CustomButton(
                onPress: () {},
                width: 1,
                height: 50,
                isGradient: false,
                isIcon: false,
                text: 'Log Out',
                radius: 10,
                fontColor: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 20,
                containerColor: FrontEndConfig.kCrossIconRedColor),
          ),

        ],
      ),
    );
  }
}
