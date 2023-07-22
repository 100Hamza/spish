import 'package:dotted_border/dotted_border.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:spish/navigation_helper/navigation_helper.dart';
import 'package:spish/presentation/elements/custome_gradient_text.dart';
import 'package:spish/presentation/view/home/home_view.dart';
import 'package:spish/presentation/view/subscribe_to_premium/widget/gridient_outlined_button.dart';
import 'package:spish/presentation/view/subscribe_to_premium/widget/payment_card.dart';

import '../../../../ui_config/front_end_config.dart';
import '../../../elements/custom_button.dart';
import '../../../elements/custom_text.dart';
import '../../../utils/screen_size.dart';
import 'package:spish/presentation/view/subscribe_to_premium/widget/bottom_sheet.dart';

class SubscribeToPremiumBody extends StatefulWidget {
  const SubscribeToPremiumBody({Key? key}) : super(key: key);

  @override
  State<SubscribeToPremiumBody> createState() => _SubscribeToPremiumBodyState();
}

class _SubscribeToPremiumBodyState extends State<SubscribeToPremiumBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
            height: ScreenSize().height(context, 0.3),
            width: ScreenSize().height(context, 0.3),
            child: const Image(
                image: AssetImage('assets/images/subscriptions_amico.png'))),
        SizedBox(
          height: ScreenSize().height(context, 0.05),
        ),
        CustomGradientText(
          text: 'upgrade_to_premium'.tr(),
          fontSize: 20,
          fontWeight: FontWeight.w700,
          textColor: Colors.white,
          fontFamily: 'Roboto',
        ),
        SizedBox(
          height: ScreenSize().height(context, 0.01),
        ),
        CustomText(
          text: 'get_access_to_create'.tr(),
          fontSize: 12,
          fontWeight: FontWeight.w700,
          textColor: FrontEndConfig.kLightGrayTextColor,
          fontFamily: 'Roboto',
        ),
        SizedBox(
          height: ScreenSize().height(context, 0.04),
        ),
        SizedBox(
          width: ScreenSize().width(context, 1),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: ScreenSize().height(context, 0.22),
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Container(
                            child: PaymentCard(
                          height: ScreenSize().height(context, 0.15),
                          color: FrontEndConfig.kSubscribeCardColor,
                          fontColor: Colors.white,
                          amount: '9.99',
                          month: '3',
                        )),
                      ),
                    ),
                    Container(
                      height: ScreenSize().height(context, 0.22),
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: DottedBorder(
                          strokeCap: StrokeCap.butt,
                          borderType: BorderType.RRect,
                          strokeWidth: 3,
                          dashPattern: [10, 10],
                          radius: const Radius.circular(10),
                          padding: const EdgeInsets.all(2),
                          color: const Color(0xFFEA3EF7),
                          child: PaymentCard(
                            height: ScreenSize().height(context, 0.15),
                            width: ScreenSize().width(context, 0.28),
                            color: Colors.white,
                            fontColor: FrontEndConfig.kSubscribeCardColor,
                            amount: '9.99',
                            month: '12',
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: PaymentCard(
                          height: ScreenSize().height(context, 0.15),
                          color: FrontEndConfig.kSubscribeCardColor,
                          fontColor: Colors.white,
                          amount: '9.99',
                          month: '6',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: ScreenSize().height(context, 0.025),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: CustomButton(
                  onPress: () {
                    // NavigationHelper.pushRoute(context, const NewPasswordView());
                    showModalBottomSheet(
                      isScrollControlled: true,
                      backgroundColor: Colors.transparent,
                      context: context,
                      builder: (context) {
                        return draggableBottomSheer();
                      },
                    );
                  },
                  text: 'subscribe'.tr(),
                  fontColor: Colors.white,
                  width: 1,
                  height: 50,
                  shadowColor: FrontEndConfig.kGradientButtonShadowColor,
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: ScreenSize().height(context, 0.03),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: CustomGradientOutlinedButton(
                  text: 'continue_as_free'.tr(),
                  width: 1,
                  height: 50,
                  fontSize: 16,
                  onPress: () {
                    NavigationHelper.pushRoute(context, const Home());
                  },
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
