import 'package:flutter/material.dart';
import 'package:spish/navigation_helper/navigation_helper.dart';
import 'package:spish/presentation/models/reports_model.dart';
import 'package:spish/presentation/view/reports/widgets/report_cards.dart';
import 'package:spish/presentation/view/user_details/user_details_view.dart';
import '../../../elements/custom_appbar.dart';
import '../../../elements/custom_text.dart';
import '../../../elements/news_feed_search.dart';
import '../../../utils/screen_size.dart';

class ReportsBody extends StatefulWidget {
  const ReportsBody({Key? key}) : super(key: key);

  @override
  State<ReportsBody> createState() => _ReportsBodyState();
}

class _ReportsBodyState extends State<ReportsBody> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        // height: ScreenSize().height(context, 0.86),
        child: Column(
          children: [
            const CustomAppBar(),
            NewsFeedSearch(isIcon: false, title: 'Reports'),
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0, left: 20),
              child: Container(
                alignment: Alignment.centerLeft,
                height: 20,
                width: MediaQuery.of(context).size.width,
                child: CustomText(
                  text: 'Individual Reports',
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                  textColor: Colors.white,
                  fontFamily: 'Roboto',
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 2),
                child: GridView.builder(
                  itemCount: reportList.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 30,
                      mainAxisSpacing: 20,
                      mainAxisExtent: ScreenSize().height(context, 0.26)),
                  itemBuilder: (context, index) {
                    return PostCards(
                      onPress: (){
                        NavigationHelper.pushRoute(context, UserDetailsView(index: index,));
                      },
                      name: reportList[index].name,
                      address: reportList[index].address,
                      image: reportList[index].image,
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
