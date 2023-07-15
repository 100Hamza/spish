import 'package:flutter/material.dart';
import 'package:spish/presentation/view/admin%20panel/ads_managment/ads_managment_overview.dart';

import '../../../../../navigation_helper/navigation_helper.dart';
import '../../../../../ui_config/front_end_config.dart';
import '../../../../elements/custom_button.dart';
import '../../../../elements/custom_text.dart';
import '../../../../utils/screen_size.dart';
import '../../../subscribe_to_premium/widget/gridient_outlined_button.dart';

class PostAd extends StatefulWidget {
  const PostAd({Key? key}) : super(key: key);

  @override
  State<PostAd> createState() => _PostAdState();
}

class _PostAdState extends State<PostAd> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: FrontEndConfig.kDarkBgColor,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text: 'Post New Ad',
                    fontSize: 25,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Roboto',
                    textColor: FrontEndConfig.kCommentTitleTextColor,
                  ),
                  Icon(Icons.send_rounded , color: FrontEndConfig.kCommentTitleTextColor,),
                ],
              ),
            ),
            SizedBox(
              height: ScreenSize().height(context, 0.007),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0 , bottom: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Checkbox(
                    side: BorderSide(
                      color:  FrontEndConfig.kCommentTitleTextColor,
                    ),
                    activeColor: FrontEndConfig.kFabColors,
                    value: isChecked, // Current state of the checkbox
                    onChanged: (bool? value) {
                      // Callback function to handle checkbox state changes
                      setState(() {
                        isChecked = value ?? false; // Update the checkbox state
                      });
                    },
                  ),
                  Expanded(
                    child: CustomText(
                      text: 'I an 100% sure that i proviede correct details about the Ad.',
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                      fontFamily: 'Roboto',
                      textColor: FrontEndConfig.kCommentTitleTextColor,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: ScreenSize().height(context, 0.02),
            ),
            SizedBox(
              height: ScreenSize().height(context, 0.02),
            ),
            SizedBox(
              height: ScreenSize().height(context, 0.03),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomGradientOutlinedButton(
                    text: 'Go Back',
                    width: 0.39,
                    height: 40,
                    fontSize: 16,
                    onPress: () {
                      // NavigationHelper.pushRoute(context, const Home());
                    },
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: CustomButton(
                      onPress: () {
                        // NavigationHelper.pushRoute(context, const AdsManagementOverView());
                        Navigator.pop(context);
                      },
                      text: 'Post New Ad',
                      fontColor: Colors.white,
                      width: 0.39,
                      isIcon: false,
                      shadowColor: FrontEndConfig.kGradientButtonShadowColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 16,

                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
