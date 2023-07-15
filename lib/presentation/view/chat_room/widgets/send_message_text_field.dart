import 'package:flutter/material.dart';

import '../../../../ui_config/front_end_config.dart';
import '../../../models/chat_room_model.dart';


class SendMessageTextField extends StatefulWidget {
  TextEditingController? messageController;

  ScrollController? scrollController;

  SendMessageTextField({this.messageController, this.scrollController});

  @override
  State<SendMessageTextField> createState() => _SendMessageTextFieldState();
}

class _SendMessageTextFieldState extends State<SendMessageTextField> {


  @override
  Widget build(BuildContext context) {
    return Container(
      color: FrontEndConfig.kDarkBgColor,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 15.0 , left: 8, right: 8),
        child: Container(
          padding: EdgeInsets.only( left: 5, right: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
                color: FrontEndConfig.kGrayTextColor
            ),
            color: FrontEndConfig.kDarkBgColor,
          ),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              height: 60,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: TextFormField(
                      cursorColor: Colors.white,
                      style: TextStyle(fontSize: 14 ,color: FrontEndConfig.kLightWhite),
                      controller: widget.messageController,
                      keyboardType: TextInputType.multiline,
                      maxLines: 8,
                      minLines: 1,
                      decoration: InputDecoration(

                        hintStyle: TextStyle(fontSize: 14 ,color: FrontEndConfig.kGrayTextColor),
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(15)
                        ),
                        focusColor: FrontEndConfig.kGrayTextColor,
                        hintText: 'Enter Message...' ,
                        fillColor: FrontEndConfig.kSubscribeCardColor ,
                        contentPadding: EdgeInsets.symmetric(horizontal: 15), filled: true,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10,),
                  GestureDetector(
                    onTap: (){
                      ChatRoomModel model = ChatRoomModel(timeStamp: DateTime.now().microsecondsSinceEpoch  , message: widget.messageController!.text.toString() , isMe: true);
                      // since we are reversing the list so we are inserting date at 0 index to append the list
                      messagesList.insert(0 ,model);
                      widget.messageController!.clear();
                      setState(() {});
                      widget.scrollController!.animateTo(
                        widget.scrollController!.position.minScrollExtent,
                        curve: Curves.easeOut,
                        duration: const Duration(milliseconds: 500),
                      );
                    },
                    child: CircleAvatar(
                      backgroundColor: FrontEndConfig.kSubscribeCardColor,
                      child: Icon(Icons.send , color: FrontEndConfig.kFabColors,),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
