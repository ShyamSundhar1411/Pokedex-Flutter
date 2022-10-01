import 'package:flutter/material.dart';
import 'package:pokedex_app/widgets/TypeDisplayWidget.dart';
import '../data/pokemone_types.dart';

class MyHomePage extends StatelessWidget {
  static const routeName = '/';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30))),
          expandedHeight: 100.0,
          floating: false,
          pinned: false,
          snap: false,
          title: Center(
            child: Text("Pokedex"),
          ),
          backgroundColor: Colors.deepOrangeAccent,
          flexibleSpace: FlexibleSpaceBar(
            stretchModes: <StretchMode>[
              StretchMode.zoomBackground,
              StretchMode.blurBackground,
              StretchMode.fadeTitle
            ],
          ),
        ),
        SliverGrid(
          delegate: SliverChildBuilderDelegate((context, index) {
            return Container(
              padding: EdgeInsets.all(10)
              ,child:TypeDisplayWidget(types[index]));
          }, childCount: types.length),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 2/1,
            crossAxisSpacing: 2,
            mainAxisSpacing: 2,
          ),
        )
      ],
    ));
  }
}
