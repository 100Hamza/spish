import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:spish/presentation/view/admin%20panel/ads_managment/ads_managment_overview.dart';
import 'package:spish/presentation/view/admin%20panel/analytics/analytics_view.dart';
import 'package:spish/presentation/view/admin%20panel/manage_user/manage_user_view.dart';
import 'package:spish/presentation/view/admin%20panel/new_ad/new_ad_view.dart';
import 'package:spish/presentation/view/admin%20panel/overview/overview_view.dart';
import 'package:spish/ui_config/front_end_config.dart';

import '../../../../provider/admin_bottom_nav_provider.dart';
import '../../../../provider/bottom_nav_provider.dart';
import '../../../elements/custom_text.dart';
import '../../feeds/feed_view.dart';
import '../../friends/friends_view.dart';
import '../../notifications/notifications_view.dart';
import '../../reports/reports_view.dart';
import '../premium_discount/premium_discount_view.dart';
import '../spish_report/spish_report_view.dart';

class AdminHome extends StatefulWidget {
  const AdminHome({Key? key}) : super(key: key);

  @override
  State<AdminHome> createState() => _AdminHomeState();
}

class _AdminHomeState extends State<AdminHome> {
  // int currentTab = 0;
  List _pager = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pager = [
      const OverViewView(),
      const AnalyticsView() ,
      const ManageUserView(),
      const SpishReportView(),
      const AdsManagementOverView(),
      const PremiumDiscountView()
    ];
  }
  //
  // final PageStorageBucket bucket = PageStorageBucket();
  // Widget currentScreen = FeedView();

  @override
  Widget build(BuildContext context) {
    final bottomNavigationProvider = Provider.of<AdminBottomNavigationProvider>(context);
    return Scaffold(
      // body: PageStorage(bucket: bucket, child: currentScreen),
      body: _pager[bottomNavigationProvider.getIndex],
      bottomNavigationBar: BottomAppBar(
        color: FrontEndConfig.kDarkBgColor,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 15.0 , left: 5, right: 5),
          child: Container(
            padding: const EdgeInsets.only(left: 8, right: 8),

            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20)
            ),
            height: 60,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    bottomNavigationProvider.setIndex(0);
                    // setState(() {
                    //   currentScreen = FeedView();
                    //   currentTab = 0;
                    //
                    // });

                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.speed, color: bottomNavigationProvider.getIndex == 0? Colors.black: Colors.grey, size: 20,),
                      CustomText(text: 'overview'.tr(), fontSize: 11, fontWeight: FontWeight.w300, textColor:  bottomNavigationProvider.getIndex == 0? Colors.black: Colors.grey, fontFamily: 'Roboto',),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    // setState(() {
                    //   currentScreen = ReportView();
                    //   currentTab = 1;
                    // });
                    bottomNavigationProvider.setIndex(1);

                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.auto_graph_rounded, color: bottomNavigationProvider.getIndex == 1? Colors.black: Colors.grey, size: 20,),
                      CustomText(text: 'analytics'.tr(), fontSize: 11, fontWeight: FontWeight.w300, textColor:  bottomNavigationProvider.getIndex == 1? Colors.black: Colors.grey, fontFamily: 'Roboto',),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    // setState(() {
                    //   currentScreen = FeedView();
                    //   currentTab = 3;
                    // });
                    bottomNavigationProvider.setIndex(2);
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.person_rounded, color: bottomNavigationProvider.getIndex == 2? Colors.black: Colors.grey, size: 20,),
                      CustomText(text: 'users'.tr(), fontSize: 11, fontWeight: FontWeight.w300, textColor:  bottomNavigationProvider.getIndex == 2? Colors.black: Colors.grey, fontFamily: 'Roboto',),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    // setState(() {
                    //   currentScreen = FriendsView();
                    //   currentTab = 4;
                    // });
                    bottomNavigationProvider.setIndex(3);
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.report, color: bottomNavigationProvider.getIndex == 3? Colors.black: Colors.grey, size: 20,),
                      CustomText(text: 'reports'.tr(), fontSize: 11, fontWeight: FontWeight.w300, textColor:  bottomNavigationProvider.getIndex == 3? Colors.black: Colors.grey, fontFamily: 'Roboto',),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    // setState(() {
                    //   currentScreen = FriendsView();
                    //   currentTab = 5;
                    // });
                    bottomNavigationProvider.setIndex(4);
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.adobe_sharp, color: bottomNavigationProvider.getIndex == 4? Colors.black: Colors.grey, size: 20,),
                      CustomText(text: 'ad'.tr(), fontSize: 11, fontWeight: FontWeight.w300, textColor:  bottomNavigationProvider.getIndex == 4? Colors.black: Colors.grey, fontFamily: 'Roboto',),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    // setState(() {
                    //   currentScreen = FriendsView();
                    //   currentTab = 6;
                    // });
                    bottomNavigationProvider.setIndex(5);
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.workspace_premium, color: bottomNavigationProvider.getIndex == 5? Colors.black: Colors.grey, size: 20,),
                      CustomText(text: 'premium'.tr(), fontSize: 11, fontWeight: FontWeight.w300, textColor:  bottomNavigationProvider.getIndex == 5? Colors.black: Colors.grey, fontFamily: 'Roboto',),
                    ],
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
