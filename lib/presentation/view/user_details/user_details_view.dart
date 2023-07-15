import 'package:flutter/material.dart';
import 'package:spish/presentation/view/user_details/layout/user_details_body.dart';
import 'package:spish/ui_config/front_end_config.dart';


class UserDetailsView extends StatelessWidget {
  int? index;
  UserDetailsView({this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: FrontEndConfig.kDarkBgColor,
      body: UserDetailsBody(index: index),
    );
  }
}
