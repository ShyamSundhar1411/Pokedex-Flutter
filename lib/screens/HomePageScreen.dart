import 'package:flutter/material.dart';
import 'package:pokedex_app/widgets/type_display_widget.dart';
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
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 3/2,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
          ),
        )
      ],
    ));
  }
}
