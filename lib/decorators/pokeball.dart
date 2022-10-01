import 'package:flutter/material.dart';

class PokeBallDecorator extends StatelessWidget {
  final double height;
  PokeBallDecorator(this.height);
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top:-height*0.16,
      right:-height*0.25,
      child:Image(
        image: AssetImage('assets/images/pokeball.png'),
        width:height *1.3,
        height: height*1.3,
        color: Colors.white.withOpacity(0.14),
        )
    );
  }
}