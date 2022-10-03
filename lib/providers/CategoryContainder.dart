import 'package:flutter/material.dart';
import '../data/category.dart';
import './CategoryProvider.dart';
import 'package:provider/provider.dart';

class CategoryContainer with ChangeNotifier {
  List<Category> _categoryItems = categories;
  List<Category> get getCategoryItems {
    return _categoryItems;
  }
}
