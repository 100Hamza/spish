import 'package:flutter/material.dart';
import 'package:spish/presentation/view/settings/layout/settings_body.dart';
import 'package:spish/ui_config/front_end_config.dart';



class SettingsView extends StatelessWidget {
  const SettingsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: FrontEndConfig.kDarkBgColor,
      body: SettingsBody(),
    );
  }
}
