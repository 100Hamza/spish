import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Sender
{
  String? sender,time, unReadMessages;
  IconData? icon;
  bool isIcon , isUnReadMessages;
  Sender({this.sender, this.isIcon = false,this.time , this.isUnReadMessages = false , this.unReadMessages});

}

List<Sender> senderData = [
  Sender(sender: 'Muhammad' , time: 'Just Now', isUnReadMessages: true, unReadMessages: '4'),
  Sender(sender: 'Hamza' ,time: '10 mins ago ' ,),
  Sender(sender: 'Muhammad Hamza' , time: '24 hrs ago',isUnReadMessages: true, unReadMessages: '10'),
  Sender(sender: 'Muhammad' , time: '2 mins ago',),
];
