import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Messages
{
  String? sender,time, unReadMessages;
  IconData? icon;
  bool isIcon , isUnReadMessages;
  Messages({this.sender, this.isIcon = false,this.time , this.isUnReadMessages = false , this.unReadMessages});

}

List<Messages> messagesList = [
  Messages(sender: 'Muhammad' , time: 'Just Now', isUnReadMessages: true, unReadMessages: '4'),
  Messages(sender: 'Hamza' ,time: '10 mins ago ' ,),
  Messages(sender: 'Muhammad Hamza' , time: '24 hrs ago',isUnReadMessages: true, unReadMessages: '10'),
  Messages(sender: 'Muhammad' , time: '2 mins ago',),
];
