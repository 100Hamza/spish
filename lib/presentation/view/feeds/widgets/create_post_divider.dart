import 'package:flutter/material.dart';

import '../../../../ui_config/front_end_config.dart';
import '../../../utils/screen_size.dart';


class CreatePostDivider extends StatelessWidget {
  const CreatePostDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0, top: 20),
      child: Container(
        alignment: Alignment.centerRight,
        width: ScreenSize().width(context, 1),
        child: Container(
          width: ScreenSize().width(context, 0.77),
          height: ScreenSize().height(context, 0.003),
          decoration: BoxDecoration(
              color: FrontEndConfig.kReactionsIconsColor
          ),
        ),
      ),
    );
  }
}
