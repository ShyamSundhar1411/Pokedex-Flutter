import 'package:flutter/material.dart';

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
          bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30))),
          expandedHeight: 100.0,
          floating: false,
          pinned:false,
          snap:false,
          backgroundColor: Colors.deepOrange,
          title: Center(child:Text("Pokedex"),),
          flexibleSpace: const FlexibleSpaceBar(
            stretchModes: <StretchMode>[
              StretchMode.zoomBackground,
              StretchMode.blurBackground,
              StretchMode.fadeTitle
            ],
          ),
        ),
      ],
    ));
  }
}
