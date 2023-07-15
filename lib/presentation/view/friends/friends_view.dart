import 'package:flutter/material.dart';
import 'package:spish/presentation/utils/screen_size.dart';
import 'package:spish/presentation/view/friends/layout/added_friends_body.dart';
import 'package:spish/presentation/view/friends/layout/friends_request_body.dart';
import 'package:spish/ui_config/front_end_config.dart';

class FriendsView extends StatelessWidget {
  const FriendsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: FrontEndConfig.kDarkBgColor,
        body: Column(
          children: [
            SizedBox(height: ScreenSize().height(context, 0.04),),
            TabBar(
              indicatorSize: TabBarIndicatorSize.label,
                indicatorColor: FrontEndConfig.kFabColors,
                labelColor: FrontEndConfig.kFabColors,
                unselectedLabelColor: FrontEndConfig.kGrayTextColor,
                tabs: const [
              Tab(
                icon: Text('Friends Request'),
              ),
              Tab(
                icon: Text('Friends'),
              ),
            ]),
            SizedBox(height: ScreenSize().height(context, 0.001) ,),
            Container(
              height: ScreenSize().height(context, 0.003),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      const Color(0xFF39FF14).withOpacity(0.7),
                      const Color(0xFFFC0082).withOpacity(0.5),
                      const Color(0xFFFC0082).withOpacity(0.7),
                    ],
                  )),
            ),
            const Expanded(
              child: TabBarView(children: [
                FriendsRequestBody(),
                AddedFriendsBody()
              ]),
            ),

          ],
        ),
      ),
    );
  }
}
