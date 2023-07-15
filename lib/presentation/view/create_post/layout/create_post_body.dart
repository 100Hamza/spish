import 'package:flutter/material.dart';
import 'package:spish/presentation/elements/custom_appbar.dart';
import 'package:spish/presentation/elements/custom_button.dart';
import 'package:spish/presentation/elements/custom_text_field.dart';
import 'package:spish/ui_config/front_end_config.dart';

import '../../../elements/custom_text.dart';
import '../../../utils/screen_size.dart';
import '../../subscribe_to_premium/widget/gridient_outlined_button.dart';

class CreatePostBody extends StatefulWidget {
  const CreatePostBody({Key? key}) : super(key: key);

  @override
  State<CreatePostBody> createState() => _CreatePostBodyState();
}

String dropDownValue = 'Everyone can reply';

// List of items in our dropdown menu
var items = [
  'Everyone can reply',
  'Nobody can reply',
  'Friends can reply',
];

class _CreatePostBodyState extends State<CreatePostBody> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          CustomAppBar(),
          Padding(
            padding: const EdgeInsets.only(top: 20.0, left: 10,),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: FrontEndConfig.kSubscribeCardColor,
                ),
                SizedBox(width: ScreenSize().width(context, 0.04),),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: 'Muhammad Hamza',
                      fontSize: 11,
                      fontWeight: FontWeight.w700,
                      textColor: FrontEndConfig.kCommentTitleTextColor,
                      fontFamily: 'Roboto',
                    ),
                    SizedBox(height: ScreenSize().height(context, 0.01),),
                    Row(
                      children: [
                        Container(
                          height: ScreenSize().height(context, 0.04),
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: FrontEndConfig.kFabColors,
                              ),
                              borderRadius: BorderRadius.circular(20)),
                          child: DropdownButton(
                            dropdownColor: FrontEndConfig.kDarkBgColor,
                            underline: Container(),
                            // Initial Value
                            value: dropDownValue,
                            // Down Arrow Icon
                            icon: Icon(
                              Icons.keyboard_arrow_down,
                              color: FrontEndConfig.kFabColors,
                            ),
                            // Array list of items
                            items: items.map((String items) {
                              return DropdownMenuItem(
                                value: items,
                                child: CustomText(
                                  text: items,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w300,
                                  textColor: FrontEndConfig.kFabColors,
                                  fontFamily: 'Roboto',
                                ),
                                // child: Text(items),
                              );
                            }).toList(),
                            // After selecting the desired option,it will
                            // change button value to selected value
                            onChanged: (String? newValue) {
                              setState(() {
                                dropDownValue = newValue!;
                                // Map the selected language name to the corresponding locale code
                              });
                            },
                          ),
                        ),
                        SizedBox(width: ScreenSize().width(context, 0.04),),
                        Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                border: Border.all(
                                  color: FrontEndConfig.kSubscribeAmountColor,

                                )),
                            child: CustomButton(
                              onPress: (){},
                                width: .28,
                                height: 35,
                                isGradient: false,
                                isIcon: false,
                                text: 'Publish post',
                                radius: 50,
                                fontColor: FrontEndConfig.kSubscribeAmountColor,
                                containerColor:
                                    FrontEndConfig.kTextFieldFontColor)),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          CustomTextField(
            isTitle: false,
            isHintText: true,
            isFilled: false,
            maxLines: 20,
            height: .33,
            textInputType: TextInputType.multiline,
          )
        ],
      ),
    );
    ;
  }
}
