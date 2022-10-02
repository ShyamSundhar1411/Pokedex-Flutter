import 'package:flutter/material.dart';
import 'package:pokedex_app/widgets/SearchFormWidget.dart';
import '../widgets/CategoryDisplayWidget.dart';
import '../data/pokemon_types.dart';
import '../data/category.dart';

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
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                ),
                
              ),
          expandedHeight: 100.0,
          floating: false,
          pinned: false,
          snap: false,
          elevation: 0,
          title:Text("Pokedex"),
          centerTitle: true,
          backgroundColor: Colors.purpleAccent,
          flexibleSpace: FlexibleSpaceBar(
            stretchModes: <StretchMode>[
              StretchMode.zoomBackground,
              StretchMode.blurBackground,
              StretchMode.fadeTitle
            ],
          ),
        ),
        SliverToBoxAdapter(
          child:SizedBox(
            child: SearchFormDisplayWidget()

          ),
        ),
        SliverGrid(
          delegate: SliverChildBuilderDelegate(
              (context, index) => Container(
                  padding: EdgeInsets.all(5),
                  child: CategoryDisplayWidget(categories[index])),
              childCount: categories.length),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 2 / 1,
            crossAxisSpacing: 2,
            mainAxisSpacing: 2,
          ),
        )
      ],
    ));
  }
}
