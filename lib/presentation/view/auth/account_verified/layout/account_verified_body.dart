import 'package:flutter/material.dart';
import 'package:spish/navigation_helper/navigation_helper.dart';
import 'package:spish/presentation/elements/custome_gradient_text.dart';
import 'package:spish/presentation/view/auth/account_verified/account_verified_view.dart';
import 'package:spish/presentation/view/auth/login/login_view.dart';

import '../../../../../ui_config/front_end_config.dart';
import '../../../../elements/custom_button.dart';
import '../../../../elements/custom_text.dart';
import '../../../../elements/custom_text_field.dart';
import '../../../../utils/screen_size.dart';

class AccountVerifiedBody extends StatelessWidget {

  AccountVerifiedBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 10),
      child: Container(
        height: ScreenSize().height(context, 1),
        width: ScreenSize().height(context, 1),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
                height: ScreenSize().height(context, 0.15),
                width: ScreenSize().height(context, 0.15),
                child: const Image(
                    image: AssetImage(
                        'assets/images/grommet_icons_status_good.png'))),
            Column(
              children: [
                CustomGradientText(
                  text: 'Congratulations',
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  textColor: Colors.white,
                  fontFamily: 'Roboto',
                ),
                SizedBox(
                  height: ScreenSize().height(context, 0.03),
                ),
                CustomText(
                  text: 'Your Account has been verified',
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                  textColor: FrontEndConfig.kLightGrayTextColor,
                  fontFamily: 'Roboto',
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: CustomButton(
                onPress: () {
                  NavigationHelper.pushRoute(context, const LoginView());
                },
                text: 'Go to home',
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
      ),
    );
  }
}
