import 'package:flutter/material.dart';
import './screens/HomePageScreen.dart';

void main() {
  runApp(MyHome());
}

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Pokedex App",
      initialRoute: '/',
      routes: {
        MyHomePage.routeName: (ctx)=>MyHomePage(),
      }
      ,
    );
  }
}


