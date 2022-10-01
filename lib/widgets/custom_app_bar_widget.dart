import 'package:flutter/material.dart';

class CustomAppBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
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
          flexibleSpace: FlexibleSpaceBar(
            background: Stack(
              fit: StackFit.expand,
              children: [
                DecoratedBox(
                    decoration: BoxDecoration(
                        border: Border.all(width: 5, color: Colors.transparent),
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(30),
                            bottomRight: Radius.circular(30)),
                        gradient: LinearGradient(
                            colors: [
                              Color(0xFFfccb90),
                              Color(0xFFd57eeb),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight)))
              ],
            ),
            stretchModes: <StretchMode>[
              StretchMode.zoomBackground,
              StretchMode.blurBackground,
              StretchMode.fadeTitle
            ],
          ),
        ),
      ],
    );
  }
}
