import 'package:flutter/material.dart';
import 'package:spish/presentation/utils/screen_size.dart';
import 'package:spish/ui_config/front_end_config.dart';

import '../../../../elements/custom_text.dart';

class CustomDropDown extends StatefulWidget {
  String dropDownTitle;
  double padding;
  CustomDropDown({this.dropDownTitle = 'Report category' , this.padding = 10.0});

  @override
  State<CustomDropDown> createState() => _CustomDropDownState();
}

class _CustomDropDownState extends State<CustomDropDown> {


  String dropdownvalue = 'Business';

  // List of items in our dropdown menu
  var items = [
    'Business',
    'Business1',
    'Business2',
    'Business3',
    'Business4',
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(widget.padding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(text: widget.dropDownTitle, fontSize: 10, fontWeight: FontWeight.w300, textColor: FrontEndConfig.kTextFieldFontColor, fontFamily: 'Roboto',),
          SizedBox(height: 5,),
          Container(
            height: ScreenSize().height(context, 0.05),
            padding: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
                color: FrontEndConfig.kTextFieldFilledColor,
                borderRadius: BorderRadius.circular(5)
            ),
            child: DropdownButton(
              dropdownColor: FrontEndConfig.kSubscribeCardColor,
              isExpanded: true,
              underline: Container(),
              // Initial Value
              value: dropdownvalue,
              // Down Arrow Icon
              icon: Icon(Icons.keyboard_arrow_down , color: FrontEndConfig.kTextFieldFontColor,),
              // Array list of items
              items: items.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: CustomText(text: items, fontSize: 10, fontWeight: FontWeight.w300, textColor: FrontEndConfig.kTextFieldFontColor, fontFamily: 'Roboto',),
                  // child: Text(items),
                );
              }).toList(),
              // After selecting the desired option,it will
              // change button value to selected value
              onChanged: (String? newValue) {
                setState(() {
                  dropdownvalue = newValue!;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
