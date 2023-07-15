import 'package:flutter/material.dart';
import 'package:spish/presentation/elements/custom_button.dart';
import 'package:spish/presentation/elements/custom_text.dart';
import 'package:spish/presentation/models/reports_model.dart';
import 'package:spish/presentation/utils/screen_size.dart';
import 'package:spish/presentation/view/subscribe_to_premium/widget/bottom_sheet.dart';
import 'package:spish/ui_config/front_end_config.dart';

class UserDetailsBody extends StatefulWidget {
  int? index;
  UserDetailsBody({this.index});

  @override
  State<UserDetailsBody> createState() => _UserDetailsBodyState();
}

class _UserDetailsBodyState extends State<UserDetailsBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 25,),
        Container(
          height: ScreenSize().height(context, 0.65),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
            image: DecorationImage(image: AssetImage(reportList[widget.index!].image.toString()), fit: BoxFit.fill)
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0, top: 10, right: 20),
          child: CustomText(
            text: reportList[widget.index!].name.toString(),
            fontSize: 20,
            fontWeight: FontWeight.w700,
            textColor: Colors.white,
            fontFamily: 'Roboto',
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0, top: 5, right: 20),
          child: CustomText(
            text: reportList[widget.index!].address.toString(),
            fontSize: 12,
            fontWeight: FontWeight.w400,
            textColor: Colors.white,
            fontFamily: 'Roboto',
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0, top: 10, right: 20),
          child: CustomText(
            text: reportList[widget.index!].description.toString(),
            fontSize: 12,
            fontWeight: FontWeight.w400,
            textColor: Colors.white,
            fontFamily: 'Roboto',
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0, top: 15, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomButton(
                  onPress: () {},
                  width: .25,
                  height: 20,
                  isGradient: false,
                  isIcon: false,
                  text: 'Graphics Designer',
                  radius: 50,
                  fontColor: Colors.white,
                  fontSize: 10,
                  containerColor: FrontEndConfig.kSubscribeCardColor),
              CustomButton(
                  onPress: () {},
                  width: .25,
                  height: 20,
                  isGradient: false,
                  isIcon: false,
                  text: 'UI/UX Designer',
                  radius: 50,
                  fontColor: Colors.white,
                  fontSize: 10,
                  containerColor: FrontEndConfig.kSubscribeCardColor),
              CustomButton(
                  onPress: () {},
                  width: .25,
                  height: 20,
                  isGradient: false,
                  isIcon: false,
                  text: 'Web Designer',
                  radius: 50,
                  fontColor: Colors.white,
                  fontSize: 10,
                  containerColor: FrontEndConfig.kSubscribeCardColor),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0, top: 30, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: const Icon(Icons.cancel , color: Colors.red, size: 40,)),
              SizedBox(width: ScreenSize().width(context, 0.15),),
              InkWell(
                onTap: (){
                  showModalBottomSheet(
                    isScrollControlled: true,
                    backgroundColor: Colors.transparent,
                    context: context,
                    builder: (context) {
                      return draggableBottomSheer();
                    },
                  );
                },
                  child: Icon(Icons.messenger_outlined , color: FrontEndConfig.kCommentIconColor, size: 40,))
            ],
          ),
        )
      ],
    );
  }
}
