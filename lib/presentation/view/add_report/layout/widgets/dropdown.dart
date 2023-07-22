import 'package:flutter/material.dart';
import 'package:spish/presentation/utils/screen_size.dart';
import 'package:spish/ui_config/front_end_config.dart';

import '../../../../elements/custom_text.dart';

class CustomDropDown extends StatefulWidget {
  String dropDownTitle;
  double padding, height;
  bool isTitle;

  final List<String> items;

  CustomDropDown({
    this.isTitle = true,
    this.height = 0.05,
    this.dropDownTitle = 'Report category',
    this.padding = 10.0,
    List<String>? items,
  }) : items = items ?? ['Business', 'Individual'];

  // CustomDropDown({this.dropDownTitle = 'Report category' , this.padding = 10.0});

  @override
  State<CustomDropDown> createState() => _CustomDropDownState();
}

class _CustomDropDownState extends State<CustomDropDown> {

  String dropdownValue = '';

  @override
  void initState() {
    super.initState();
    dropdownValue = widget.items[0]; // Set the initial dropdown value
  }
  //
  // String dropdownvalue = 'Business';
  //
  // // List of items in our dropdown menu
  // var items = [
  //   'Business',
  //   'Individual'
  // ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(widget.padding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          widget.isTitle? CustomText(text: widget.dropDownTitle, fontSize: 10, fontWeight: FontWeight.w300, textColor: FrontEndConfig.kTextFieldFontColor, fontFamily: 'Roboto',) : Container(),
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
              value: dropdownValue,
              // Down Arrow Icon
              icon: const Icon(Icons.keyboard_arrow_down , color: FrontEndConfig.kTextFieldFontColor,),
              // Array list of items
              items: widget.items.map((String items) {
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
                  dropdownValue = newValue!;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
