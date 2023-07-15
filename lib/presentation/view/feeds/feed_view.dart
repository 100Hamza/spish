import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:spish/presentation/view/feeds/layout/feed_body.dart';
import 'package:spish/ui_config/front_end_config.dart';

class FeedView extends StatefulWidget {
  const FeedView({Key? key}) : super(key: key);

  @override
  State<FeedView> createState() => _FeedViewState();
}

class _FeedViewState extends State<FeedView> {
  ValueNotifier<bool> isDialOpen = ValueNotifier(false);
  bool customDialRoot = true;
  bool extend = false;
  bool rmIcons = false;
  bool isSearched = false;
  bool isPost = false;




  @override
  Widget build(BuildContext context) {
    Color bg1 = FrontEndConfig.kFabColors;
    Color bg2 = FrontEndConfig.kFabColors;
    Color fg1 = Colors.white;
    Color fg2 = Colors.white;

    return Scaffold(
      backgroundColor: FrontEndConfig.kDarkBgColor,
      body: FeedBody(isSearch: isSearched , isPost: isPost),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 10.0),
        child: SpeedDial(
          icon: Icons.more_vert_rounded,
          activeIcon: Icons.close,
          backgroundColor: FrontEndConfig.kFabColors,
          spacing: 3,
          openCloseDial: isDialOpen,
          childPadding: const EdgeInsets.all(5),
          spaceBetweenChildren: 4,
          buttonSize: Size.fromRadius(30), // SpeedDial size which defaults to 56 itself
          // iconTheme: IconThemeData(size: 22),
          label: extend? const Text("Open") : null, // The label of the main button.
          /// The active label of the main button, Defaults to label if not specified.
          activeLabel: extend ? const Text("Close") : null,

          /// Transition Builder between label and activeLabel, defaults to FadeTransition.
          // labelTransitionBuilder: (widget, animation) => ScaleTransition(scale: animation,child: widget),
          /// The below button size defaults to 56 itself, its the SpeedDial childrens size
          childrenButtonSize: Size.fromRadius(35),
          visible: true,
          direction: SpeedDialDirection.up,
          switchLabelPosition: false,

          /// If true user is forced to close dial manually
          closeManually: false,

          /// If false, backgroundOverlay will not be rendered.
          renderOverlay: false,
          // overlayColor: Colors.black,
          // overlayOpacity: 0.5,
          onOpen: () => debugPrint('OPENING DIAL'),
          onClose: () => debugPrint('DIAL CLOSED'),
          useRotationAnimation: true,
          // foregroundColor: Colors.black,
          // backgroundColor: Colors.white,
          // activeForegroundColor: Colors.red,
          // activeBackgroundColor: Colors.blue,
          elevation: 8.0,
          animationCurve: Curves.elasticInOut,
          isOpenOnStart: false,
          animationDuration: const Duration(milliseconds: 500),
          // shape: customDialRoot
          //     ? const RoundedRectangleBorder()
          //     : const StadiumBorder(),
          // childMargin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          children: [
            SpeedDialChild(
              child: !rmIcons ? const Icon(Icons.feed) : null,
              backgroundColor: isPost? fg1 :bg1 ,
              foregroundColor: isPost ? bg1 : fg1,
              onTap: () {
                setState(() {
                  isSearched = false;
                  isPost = !isPost;
                });
              },
            ),
            SpeedDialChild(
              child: !rmIcons ? const Icon(Icons.search) : null,
              backgroundColor: isSearched?  fg2: bg2,
              foregroundColor: isSearched? bg2 : fg2,
              visible: true,
              onTap: () {
                setState(() {
                  isSearched = !isSearched;
                  isPost = false;
                });
              },
              onLongPress: () => debugPrint('THIRD CHILD LONG PRESS'),
            ),
          ],
        ),
      ),

    );
  }
}
