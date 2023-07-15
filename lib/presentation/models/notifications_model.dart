import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Notifications
{
String? actor, react, toWhom,time;
IconData? icon;
Notifications({this.actor, this.react,this.time , this.icon, this.toWhom});

}

List<Notifications> notificationsList = [
  Notifications(actor: 'Muhammad' , react: 'liked',toWhom: 'khan\'s post', time: 'Just Now', icon: Icons.thumb_up_rounded),
  Notifications(actor: 'Hamza' , react: 'commented',toWhom: 'on your post', time: '10 mins ago ' ,icon: Icons.comment),
  Notifications(actor: 'Muhammad Hamza' , react: 'shared',toWhom: 'an Image', time: '24 hrs ago',icon: Icons.image),
  Notifications(actor: 'Muhammad' , react: 'reacted ',toWhom: 'on Hamza\'s Image', time: '2 mins ago',icon: Icons.emoji_emotions_outlined),
];
