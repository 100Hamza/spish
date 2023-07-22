import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:spish/presentation/view/admin%20panel/new_ad/tabs_screen/add_details.dart';
import 'package:spish/presentation/view/admin%20panel/new_ad/tabs_screen/comp_details.dart';
import 'package:spish/presentation/view/admin%20panel/new_ad/tabs_screen/post_ad.dart';
import 'package:spish/ui_config/front_end_config.dart';

import '../../../utils/screen_size.dart';
import '../../friends/layout/added_friends_body.dart';
import '../../friends/layout/friends_request_body.dart';

class NewAdView extends StatelessWidget {
  const NewAdView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: FrontEndConfig.kDarkBgColor,
        body: Column(
          children: [
            SizedBox(height: ScreenSize().height(context, 0.04),),
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: FrontEndConfig.kSubscribeCardColor,
                ),
                child: TabBar(

                    indicatorColor: FrontEndConfig.kFabColors,
                    labelColor: FrontEndConfig.kFabColors,
                    unselectedLabelColor: FrontEndConfig.kGrayTextColor,
                    splashBorderRadius: BorderRadius.circular(10),
                    tabs: [
                      Tab(
                        icon: Text('ad_details'.tr()),
                      ),
                      Tab(
                        icon: Text('comp_details'.tr()),
                      ),
                      Tab(
                        icon: Text('post_ad'.tr()),
                      ),
                    ]),
              ),
            ),
            SizedBox(height: ScreenSize().height(context, 0.01) ,),
            Container(
              height: ScreenSize().height(context, 0.002),
              color: FrontEndConfig.kGrayTextColor,
            ),
             Expanded(
              child: TabBarView(children: [
                AdDetails(),
                CompDetails(),
                PostAd(),
              ]),
            ),

          ],
        ),
      ),
    );
  }
}
