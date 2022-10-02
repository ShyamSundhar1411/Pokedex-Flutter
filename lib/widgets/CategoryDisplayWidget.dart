import 'package:flutter/material.dart';
import '../decorators/shadow.dart';
import '../decorators/pokeball.dart';
import '../providers/CategoryProvider.dart';

class CategoryDisplayWidget extends StatelessWidget {
  final Category category;
  CategoryDisplayWidget(this.category);
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final itemHeight = constraints.maxHeight;
      final itemWidth = constraints.maxWidth;
      return Stack(
        children: [
          Align(
              alignment: Alignment.bottomCenter,
              child: ShadowDisplay(category.color, itemWidth)),
          Material(
              color: category.color,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              clipBehavior: Clip.antiAlias,
              child: InkWell(
                  splashColor: Colors.white10,
                  highlightColor: Colors.white30,
                  onTap: () {},
                  child: Stack(
                    children: [
                      PokeBallDecorator(itemHeight),
                      ContentRenderer(category.name)
                    ],
                  )))
        ],
      );
    });
  }
}

class ContentRenderer extends StatelessWidget {
  final String toDisplay;
  ContentRenderer(this.toDisplay);
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.centerLeft,
        padding: EdgeInsets.all(16),
        child: Text(toDisplay,
            style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold)));
  }
}
