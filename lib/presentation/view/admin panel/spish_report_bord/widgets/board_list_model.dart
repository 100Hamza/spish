import 'package:flutter/material.dart';

import '../../../../../ui_config/front_end_config.dart';
import '../../../../elements/custom_button.dart';
import '../../../../elements/custom_text.dart';

class BoardListModel extends StatelessWidget {
  String? name;
  BoardListModel({this.name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0 , horizontal: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const CircleAvatar(
            backgroundColor: FrontEndConfig.kGrayTextColor,
          ),
          CustomText(
            text: name,
            fontSize: 20,
            fontWeight: FontWeight.w500,
            fontFamily: 'Roboto',
            textColor: Colors.white,
          ),
          CustomButton(text: 'Approve', isIcon: false, isGradient: false, width: 0.2, height: 30, containerColor: FrontEndConfig.kActiveFemaleColor, fontColor: Colors.white, fontSize: 16, fontWeight: FontWeight.w500, radius: 0,)
        ],
      ),
    );
  }
}
