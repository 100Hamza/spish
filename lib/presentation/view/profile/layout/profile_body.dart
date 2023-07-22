import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:spish/presentation/elements/custom_appbar.dart';
import 'package:spish/presentation/utils/screen_size.dart';
import 'package:spish/presentation/view/profile/layout/widgets/profile_model.dart';
import 'package:spish/presentation/view/profile/layout/widgets/tabs_text.dart';
import 'package:spish/presentation/view/profile/tab_view_pages/followers.dart';

import '../../../../navigation_helper/navigation_helper.dart';
import '../../../../ui_config/front_end_config.dart';
import '../../../elements/custom_text.dart';
import '../../../elements/custome_gradient_text.dart';
import '../../feeds/feed_view.dart';
import '../../feeds/layout/feed_body.dart';
import '../../feeds/widgets/reactions_on_post.dart';
import '../../friends/layout/added_friends_body.dart';
import '../../friends/layout/friends_request_body.dart';
import '../../profile_pictures/profile_pictures_view.dart';
import '../tab_view_pages/following.dart';

class ProfileBody extends StatefulWidget {
  const ProfileBody({Key? key}) : super(key: key);

  @override
  State<ProfileBody> createState() => _ProfileBodyState();
}

class _ProfileBodyState extends State<ProfileBody> {
  bool isMore = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 3,
        child: Column(
          children: [
            const CustomAppBar(),
            ProfileModel(
              onPress: (){
                setState(() {
                  isMore = !isMore;
                });
              },
              isMore: isMore,
            ),
            SizedBox(height: ScreenSize().height(context, 0.01),),
            TabBar(
                indicatorColor: FrontEndConfig.kLightPink,
                labelColor: FrontEndConfig.kLightPink,
                unselectedLabelColor: FrontEndConfig.kGrayTextColor,
                tabs: [
                  Tab(
                    icon:  TabsText(text: 'new_feed'.tr(),)
                  ),
                  Tab(
                    icon: TabsText(text: 'followers'.tr(),)
                  ),
                  Tab(
                    icon: TabsText(text: 'following'.tr(),)
                  )
                ]),
            SizedBox(height: ScreenSize().height(context, 0.02) ,),
            Expanded(
              child: TabBarView(children: [
                FeedBody(isSearch: false , isPost: false , isAppBar: false , ),
                const Followers(),
                const Following(),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
