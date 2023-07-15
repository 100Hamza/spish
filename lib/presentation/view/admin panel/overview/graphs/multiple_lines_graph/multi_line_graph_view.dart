import 'package:flutter/material.dart';
import 'package:spish/presentation/elements/custom_text.dart';
import 'package:spish/presentation/utils/screen_size.dart';
import 'package:spish/ui_config/front_end_config.dart';

import 'multiple_line_graph_body.dart';



class MultiLineGraphView extends StatefulWidget {
  const MultiLineGraphView({Key? key}) : super(key: key);

  @override
  State<MultiLineGraphView> createState() => _MultiLineGraphViewState();
}

class _MultiLineGraphViewState extends State<MultiLineGraphView> {

  late bool isShowingMainData;

  @override
  void initState() {
    super.initState();
    isShowingMainData = true;
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.orange,
        borderRadius: BorderRadius.circular(10)
      ),
      height: ScreenSize().height(context, 0.19),
      child: AspectRatio(
        aspectRatio: 1.23,
        child: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                const SizedBox(
                  height: 37,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 2.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                        text: 'Pending Task',
                        fontSize:   8,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Roboto',
                        textColor: FrontEndConfig.kDarkBgColor,
                      ),
                      CustomText(
                        text: 'Posts',
                        fontSize:   8,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Roboto',
                        textColor: FrontEndConfig.kDarkBgColor,
                      ),
                      CustomText(
                        text: 'Reports',
                        fontSize:   8,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Roboto',
                        textColor: FrontEndConfig.kDarkBgColor,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 01, left: 0),
                    child: MultiLineGraphBody(isShowingMainData: isShowingMainData),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
            IconButton(
              icon: Icon(
                Icons.refresh,
                color: Colors.green.withOpacity(isShowingMainData ? 1.0 : 0.5),
              ),
              onPressed: () {
                setState(() {
                  isShowingMainData = !isShowingMainData;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
