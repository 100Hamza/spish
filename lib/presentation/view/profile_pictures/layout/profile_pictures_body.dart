import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../ui_config/front_end_config.dart';
import '../../../elements/custom_button.dart';
import '../../../models/reports_model.dart';
import '../../../utils/screen_size.dart';

class ProfilePicBody extends StatelessWidget {
  const ProfilePicBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(top: 20.0 , left: 10, right: 10),
      child: Column(
        children: [
          Expanded(
            child: GridView.builder(
              itemCount: reportList.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 30,
                  mainAxisExtent: ScreenSize().height(context, 0.16)
                  ),
              itemBuilder: (context, index) {
                return Container(
                  height: ScreenSize().height(context, 0.2),
                  width: ScreenSize().width(context, 0.4),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(image: AssetImage(reportList[index].image.toString()) , fit: BoxFit.fill)
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 50.0),
            child: CustomButton(
              onPress: () {
                Navigator.pop(context);
              },
              text: 'set_as_display'.tr(),
              fontColor: Colors.white,
              width: 0.55,
              isIcon: false,
              shadowColor: FrontEndConfig.kGradientButtonShadowColor,
              fontWeight: FontWeight.w600,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
