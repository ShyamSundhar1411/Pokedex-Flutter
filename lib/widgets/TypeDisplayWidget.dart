import 'package:flutter/material.dart';
import '../decorators/shadow.dart';
import '../decorators/pokeball.dart';
import '../providers/TypeProvider.dart';

class TypeDisplayWidget extends StatelessWidget {
  final Type type;
  TypeDisplayWidget(this.type);
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final itemHeight = constraints.maxHeight;
      final itemWidth = constraints.maxWidth;
      return Stack(
        children: [
          Align(
              alignment: Alignment.bottomCenter,
              child: ShadowDisplay(type.color, itemWidth)),
          Material(
              color: type.color,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              clipBehavior: Clip.antiAlias,
              child: InkWell(
                  splashColor: Colors.white10,
                  highlightColor: Colors.white10,
                  onTap: () {},
                  child: Stack(
                    children: [
                      PokeBallDecorator(itemHeight),
                    ],
                    )
                  )
                )
        ],
      );
    });
  }
}
