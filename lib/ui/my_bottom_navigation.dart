import 'package:flutter/material.dart';
import 'package:flutter_lesson/models/item.dart';

class MyBottomScreen extends StatefulWidget {
  final Item item;

  MyBottomScreen(this.item);

  
  @override
  _MyBottomScreenState createState() => _MyBottomScreenState();
}

class _MyBottomScreenState extends State<MyBottomScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.item.content),
      ),
    );
  }
}
