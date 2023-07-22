import 'package:easy_localization/easy_localization.dart';
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
             CustomListTiles(title: 'change_subscription_plan'.tr(), subtitle: '',),
             CustomListTiles(title: 'change_lang_setting'.tr(), subtitle: 'English (US)',),
             CustomListTiles(title: 'privacy_setting'.tr(), subtitle: 'name_email_and_password_change'.tr(),),
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
                text: 'logout'.tr(),
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
