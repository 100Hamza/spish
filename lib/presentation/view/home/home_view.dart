import 'package:easy_localization/easy_localization.dart';
import 'package:floating_bottom_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:spish/presentation/view/feeds/feed_view.dart';

import 'package:spish/presentation/view/friends/friends_view.dart';
import 'package:spish/presentation/view/reports/reports_view.dart';

import '../../../navigation_helper/navigation_helper.dart';
import '../../../provider/bottom_nav_provider.dart';
import '../../../ui_config/front_end_config.dart';
import '../../elements/custom_text.dart';
import '../add_report/add_report_view.dart';
import '../notifications/notifications_view.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List _pager = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pager = [
      const FeedView(), const ReportView(),const NotificationsView(), const FriendsView() , const AddReportView()
    ];
  }
  bool isFloatClicked = false;
  @override
  Widget build(BuildContext context) {
    final bottomNavigationProvider = Provider.of<BottomNavigationProvider>(context);
    return Scaffold(
        backgroundColor: Colors.indigoAccent,
        body: _pager[bottomNavigationProvider.getIndex],
        floatingActionButton: FloatingActionButton(onPressed: (){
          setState(() {
            isFloatClicked = !isFloatClicked;
            isFloatClicked? bottomNavigationProvider.setIndex(4) : bottomNavigationProvider.setIndex(0);
          });
        },
        child: isFloatClicked ? Icon(Icons.close) : Icon(Icons.add),
          backgroundColor: FrontEndConfig.kSubscribeAmountColor,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          notchMargin: 10,
          color: FrontEndConfig.kDarkBgColor,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 15.0 , left: 5, right: 5),
            child: Container(
              padding: const EdgeInsets.only(left: 8, right: 8),

              decoration: BoxDecoration(
                  color: FrontEndConfig.kDarkBgColor,
                  borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: FrontEndConfig.kGrayTextColor,
                )
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
                        Icon(Icons.home, color: bottomNavigationProvider.getIndex == 0? FrontEndConfig.kFabColors: Colors.grey, size: 20,),
                        CustomText(text: 'new_feed'.tr(), fontSize: 11, fontWeight: FontWeight.w300, textColor:  bottomNavigationProvider.getIndex == 0? FrontEndConfig.kFabColors: Colors.grey, fontFamily: 'Roboto',),
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
                        Icon(Icons.auto_graph_rounded, color: bottomNavigationProvider.getIndex == 1? FrontEndConfig.kFabColors: Colors.grey, size: 20,),
                        CustomText(text: 'reports'.tr(), fontSize: 11, fontWeight: FontWeight.w300, textColor:  bottomNavigationProvider.getIndex == 1? FrontEndConfig.kFabColors: Colors.grey, fontFamily: 'Roboto',),
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
                        Icon(Icons.person_rounded, color: bottomNavigationProvider.getIndex == 2? FrontEndConfig.kFabColors: Colors.grey, size: 20,),
                        CustomText(text: 'notifications'.tr(), fontSize: 11, fontWeight: FontWeight.w300, textColor:  bottomNavigationProvider.getIndex == 2? FrontEndConfig.kFabColors: Colors.grey, fontFamily: 'Roboto',),
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
                        Icon(Icons.report, color: bottomNavigationProvider.getIndex == 3? FrontEndConfig.kFabColors: Colors.grey, size: 20,),
                        CustomText(text: 'friends'.tr(), fontSize: 11, fontWeight: FontWeight.w300, textColor:  bottomNavigationProvider.getIndex == 3? FrontEndConfig.kFabColors: Colors.grey, fontFamily: 'Roboto',),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),


      );

    //   Scaffold(
    //   backgroundColor: Colors.indigoAccent,
    //   body: Stack(
    //     children: [
    //       Positioned.fill(
    //         child: _pager[bottomNavigationProvider.getIndex],
    //       ),
    //       Positioned(
    //         bottom: 0,
    //         left: 0,
    //         right: 0,
    //         child: SlidingClippedNavBar(
    //           backgroundColor: FrontEndConfig.kSubscribeCardColor,
    //           onButtonPressed: (index) {
    //             bottomNavigationProvider.setIndex(index);
    //           },
    //           barItems: [
    //             BarItem(
    //               icon: Icons.home,
    //               title: 'News Feed',
    //             ),
    //             BarItem(
    //               icon: Icons.report,
    //               title: 'Reports',
    //             ),
    //             BarItem(
    //               icon: Icons.notifications,
    //               title: 'Notifications',
    //             ),
    //             BarItem(
    //               icon: Icons.person_outline,
    //               title: 'Friends',
    //             ),
    //             // Add more BarItems if needed
    //           ],
    //           activeColor: FrontEndConfig.kCanNotRememberTextColor,
    //           inactiveColor: FrontEndConfig.kGrayTextColor,
    //           selectedIndex: bottomNavigationProvider.getIndex,
    //         ),
    //       ),
    //       Positioned(
    //         bottom: 30,
    //         left: 0,
    //         right: 0,
    //         child: Center(
    //           child: FloatingActionButton(
    //             onPressed: () {
    //               // Handle FAB tap
    //             },
    //             child: Icon(Icons.add),
    //             backgroundColor: Colors.red,, // Customize the FAB background color
    //           ),
    //         ),
    //       ),
    //     ],
    //   ),
    // );



  }
}
