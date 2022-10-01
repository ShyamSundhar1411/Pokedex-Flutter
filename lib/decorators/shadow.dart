import 'package:flutter/material.dart';

class ShadowDisplay extends StatelessWidget {
  final Color color;
  final double width;
  ShadowDisplay(this.color, this.width);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width*0.82,
      height: 11,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: color,
            offset: Offset(0,3),
            blurRadius: 23,
          )
        ]
      ),
    );
  }
}
