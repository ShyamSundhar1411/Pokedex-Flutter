import 'package:flutter/material.dart';
import '../providers/TypeProvider.dart';

class TypeDisplayWidget extends StatelessWidget {
  final Type type;
  TypeDisplayWidget(this.type);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(20),
      child:Container(
        padding: const EdgeInsets.all(8),
        child:Center(
          child:Text(type.name),
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [type.color.withOpacity(0.7), type.color],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
      )
    );
  }
}
