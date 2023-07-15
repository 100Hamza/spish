import 'package:flutter/material.dart';

class GradientIcon extends StatelessWidget {
  IconData? icon;
  double? iconSize;
  GradientIcon({this.icon, this.iconSize});

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
        shaderCallback: (bounds) => const LinearGradient(colors: [
          Color(0xFF4EB879),
          Color(0xFFEA3EF7),
        ]).createShader(
          Rect.fromLTRB(4, 0, bounds.width, bounds.height),
        ),child: Icon(icon ,  size: iconSize , color: Colors.white,));
  }
}
