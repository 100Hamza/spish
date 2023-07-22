import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:spish/presentation/elements/custom_button.dart';
import 'package:spish/ui_config/front_end_config.dart';

import '../../../../elements/custom_text.dart';
import '../widgets/board_list_model.dart';

class SpishReportBoardBody extends StatefulWidget {
  const SpishReportBoardBody({Key? key}) : super(key: key);

  @override
  State<SpishReportBoardBody> createState() => _SpishReportBoardBodyState();
}

class _SpishReportBoardBodyState extends State<SpishReportBoardBody> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: FrontEndConfig.kCommentTitleTextColor),
              child: Column(
                children: [
                  CustomText(
                    text: 'no_of_reports'.tr(),
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                    fontFamily: 'Roboto',
                    textColor: Colors.black,
                  ),
                  SizedBox(height: 10,),
                  Column(
                    children: [
                      Row(
                        children: [
                          CustomText(
                            text: '39',
                            fontSize: 30,
                            fontWeight: FontWeight.w900,
                            fontFamily: 'Roboto',
                            textColor: Colors.black,
                          ),
                          SizedBox(width: 20,),
                          CustomText(
                            text: 'reports'.tr(),
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Roboto',
                            textColor: Colors.black,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          CustomText(
                            text: '69',
                            fontSize: 30,
                            fontWeight: FontWeight.w900,
                            fontFamily: 'Roboto',
                            textColor: Colors.black,
                          ),
                          SizedBox(width: 20,),
                          CustomText(
                            text: 'individual_report'.tr(),
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Roboto',
                            textColor: Colors.black,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          CustomText(
                            text: '45',
                            fontSize: 30,
                            fontWeight: FontWeight.w900,
                            fontFamily: 'Roboto',
                            textColor: Colors.black,
                          ),
                          SizedBox(width: 20,),
                          CustomText(
                            text: 'business_reports'.tr(),
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Roboto',
                            textColor: Colors.black,
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 20,),
            CustomText(
              text: 'user_pending_reports'.tr(),
              fontSize: 20,
              fontWeight: FontWeight.w500,
              fontFamily: 'Roboto',
              textColor: Colors.white,
            ),
            SizedBox(height: 10,),
            Expanded(
              child: ListView.builder(
                itemCount: 4,
                itemBuilder: (context, index) {
                return BoardListModel(name: 'Waleed',);
              },),
            )
          ],
        ),
      ),
    );
  }
}
