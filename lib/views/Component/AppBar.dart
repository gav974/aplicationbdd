import 'package:flutter/material.dart';
class appBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: () { Navigator.pop(context); },),
      title: Text('myApp'),
    );
  }
}