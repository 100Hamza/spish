import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:intl/intl.dart';

import 'package:spish/presentation/models/chat_room_model.dart';
import '../../../../ui_config/front_end_config.dart';
import '../widgets/chat_room_app_bar.dart';
import '../widgets/message_bubble.dart';
import '../widgets/send_message_text_field.dart';

class ChatRoomBody extends StatefulWidget {
  const ChatRoomBody({Key? key}) : super(key: key);

  @override
  State<ChatRoomBody> createState() => _ChatRoomBodyState();
}

class _ChatRoomBodyState extends State<ChatRoomBody> {
  //message controller
  final messageController = TextEditingController();

  //scroll controller
  final ScrollController _scrollController = new ScrollController();

  // function to convert time stamp to date
  static DateTime returnDateAndTimeFormat(String time) {
    var dt = DateTime.fromMicrosecondsSinceEpoch(int.parse(time.toString()));
    var originalDate = DateFormat('MM/dd/yyyy').format(dt);
    return DateTime(dt.year, dt.month, dt.day);
  }

  //function to return message time in 24 hours format AM/PM
  static String messageTime(String time) {
    var dt = DateTime.fromMicrosecondsSinceEpoch(int.parse(time.toString()));
    String difference = '';
    difference = DateFormat('jm').format(dt).toString();
    return difference;
  }

  // function to return date if date changes based on your local date and time
  static String groupMessageDateAndTime(String time) {
    var dt = DateTime.fromMicrosecondsSinceEpoch(int.parse(time.toString()));
    var originalDate = DateFormat('MM/dd/yyyy').format(dt);

    final todayDate = DateTime.now();

    final today = DateTime(todayDate.year, todayDate.month, todayDate.day);
    final yesterday =
        DateTime(todayDate.year, todayDate.month, todayDate.day - 1);
    String difference = '';
    final aDate = DateTime(dt.year, dt.month, dt.day);

    if (aDate == today) {
      difference = "Today";
    } else if (aDate == yesterday) {
      difference = "Yesterday";
    } else {
      difference = DateFormat.yMMMd().format(dt).toString();
    }

    return difference;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,

      body: Container(
        color: FrontEndConfig.kDarkBgColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 30,),
            ChatRoomAppBar(),
            Expanded(
              child: Container(
                color: FrontEndConfig.kDarkBgColor,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Container(
                    child: ListView.builder(
                        controller: _scrollController,
                        reverse: true,
                        shrinkWrap: true,
                        physics: const ClampingScrollPhysics(),
                        // ← can't
                        itemCount: messagesList.length,
                        itemBuilder: (context, index) {
                          bool isSameDate = false;
                          String? newDate = '';

                          final DateTime date = returnDateAndTimeFormat(
                              messagesList[index].timeStamp.toString());

                          if (index == 0 && messagesList.length == 1) {
                            newDate = groupMessageDateAndTime(
                                    messagesList[index].timeStamp.toString())
                                .toString();
                          } else if (index == messagesList.length - 1) {
                            newDate = groupMessageDateAndTime(
                                    messagesList[index].timeStamp.toString())
                                .toString();
                          } else {
                            final DateTime date = returnDateAndTimeFormat(
                                messagesList[index].timeStamp.toString());
                            final DateTime prevDate = returnDateAndTimeFormat(
                                messagesList[index + 1].timeStamp.toString());
                            isSameDate = date.isAtSameMomentAs(prevDate);

                            if (kDebugMode) {
                              print("$date $prevDate $isSameDate");
                            }
                            newDate = isSameDate
                                ? ''
                                : groupMessageDateAndTime(
                                        messagesList[index - 1]
                                            .timeStamp
                                            .toString())
                                    .toString();
                          }

                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            child: Column(
                              crossAxisAlignment: messagesList[index].isMe
                                  ? CrossAxisAlignment.end
                                  : CrossAxisAlignment.start,
                              children: [
                                if (newDate.isNotEmpty)
                                  Center(
                                      child: Container(
                                          decoration: BoxDecoration(
                                              //Date Colors
                                              color: Color(0xffE3D4EE),
                                              borderRadius:
                                                  BorderRadius.circular(20)),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(newDate),
                                          ))),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 4),
                                  child: CustomPaint(
                                    painter: MessageBubble(
                                        // Text background Colors
                                        color: messagesList[index].isMe
                                            ? const Color(0XFF4EB879)
                                            : const Color(0xff4B4F49),
                                        alignment: messagesList[index].isMe
                                            ? Alignment.topRight
                                            : Alignment.topLeft,
                                        tail: true),
                                    child: Container(
                                      constraints: BoxConstraints(
                                        maxWidth:
                                            MediaQuery.of(context).size.width *
                                                .7,
                                      ),
                                      margin: messagesList[index].isMe
                                          ? const EdgeInsets.fromLTRB(
                                              7, 7, 17, 7)
                                          : const EdgeInsets.fromLTRB(
                                              17, 7, 7, 7),
                                      child: Stack(
                                        children: [
                                          Padding(
                                            padding: messagesList[index].isMe
                                                ? const EdgeInsets.only(
                                                    left: 4,
                                                    right: 4,
                                                    bottom: 10)
                                                : const EdgeInsets.only(
                                                    left: 4,
                                                    right: 4,
                                                    bottom: 10),
                                            child: Text(
                                              messagesList[index].message,
                                              textAlign: TextAlign.left,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headline5!
                                                  .copyWith(
                                                      fontSize: 15,
                                                      //Text Color
                                                      color: messagesList[index]
                                                              .isMe
                                                          ? const Color(
                                                              0xffF1F5F9)
                                                          : const Color(
                                                              0xffF1F5F9)),
                                            ),
                                          ),
                                          Positioned(
                                              bottom: 0,
                                              right: 0,
                                              child: Text(
                                                messageTime(messagesList[index]
                                                        .timeStamp
                                                        .toString())
                                                    .toString(),
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                    fontSize: 10,
                                                    color: FrontEndConfig
                                                        .kTextFieldFontColor),
                                              ))
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        }),
                  ),
                ),
              ),
            ),
            SendMessageTextField(
              messageController: messageController,
              scrollController: _scrollController,
            )
          ],
        ),
      ),
    );
  }
}
