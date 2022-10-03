import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class Category extends ChangeNotifier{
  final String name;
  final Color color;
  Category(this.name, this.color);
}