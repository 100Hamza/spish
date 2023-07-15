


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Reports
{
  String? name, address, image , description;

  Reports({this.name, this.address,this.image , this.description});


}

List<Reports> reportList = [
  Reports(name: 'Muhammad' , address: 'Kohat, Pk',image: 'assets/images/image1.png' ,description: 'Howdy, y\'all! My name is Muhammad, and I am from Kohat, Pakistan. I got my start as a graphic designer by creating a logo for my dad\'s barbeque joint.' ),
  Reports(name: 'Hamza' , address: 'Isb, Pk',image: 'assets/images/image2.png', description: 'Howdy, y\'all! My name is Hamza, and I am from Isb, Pakistan. I got my start as a graphic designer by creating a logo for my dad\'s barbeque joint.'),
  Reports(name: 'Muhammad Hamza' , address: 'New York, USA',image: 'assets/images/image3.png',description: 'Howdy, y\'all! My name is Muhammad Hamza, and I am from New York, USA. I got my start as a graphic designer by creating a logo for my dad\'s barbeque joint.'),
  Reports(name: 'Muhammad' , address: 'Lhr, Pk',image: 'assets/images/image4.png',description: 'Howdy, y\'all! My name is Muhammad, and I am from Lhr Pakistan. I got my start as a graphic designer by creating a logo for my dad\'s barbeque joint.'),
  Reports(name: 'Muhammad' , address: 'Kohat, Pk',image: 'assets/images/image1.png' ,description: 'Howdy, y\'all! My name is Muhammad, and I am from Kohat, Pakistan. I got my start as a graphic designer by creating a logo for my dad\'s barbeque joint.' ),
  Reports(name: 'Hamza' , address: 'Isb, Pk',image: 'assets/images/image2.png', description: 'Howdy, y\'all! My name is Hamza, and I am from Isb, Pakistan. I got my start as a graphic designer by creating a logo for my dad\'s barbeque joint.'),
  Reports(name: 'Muhammad Hamza' , address: 'New York, USA',image: 'assets/images/image3.png',description: 'Howdy, y\'all! My name is Muhammad Hamza, and I am from New York, USA. I got my start as a graphic designer by creating a logo for my dad\'s barbeque joint.'),
  Reports(name: 'Muhammad' , address: 'Lhr, Pk',image: 'assets/images/image4.png',description: 'Howdy, y\'all! My name is Muhammad, and I am from Lhr Pakistan. I got my start as a graphic designer by creating a logo for my dad\'s barbeque joint.'),
];
