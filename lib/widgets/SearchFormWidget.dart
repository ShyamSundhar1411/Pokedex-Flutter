import 'package:flutter/material.dart';

class SearchFormDisplayWidget extends StatefulWidget {
  @override
  State<SearchFormDisplayWidget> createState() => _SearchFormDisplayWidgetState();
}

class _SearchFormDisplayWidgetState extends State<SearchFormDisplayWidget> {
  final _searchFocusNode = FocusNode();

  @override
  void dispose() {
    _searchFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(20),
        child: Form(
          child: TextFormField(
            decoration: InputDecoration(
              labelText: "Search",
              border: OutlineInputBorder(),
            ),
            autocorrect: true,
            focusNode: _searchFocusNode,
          ),
        ));
  }
}
