import 'package:flutter/material.dart';
import 'package:flutter_lesson/models/item.dart';

class MyFloatingScreen extends StatefulWidget {
  final Item item;

  MyFloatingScreen(this.item);
  
  @override
  _MyFloatingScreenState createState() => _MyFloatingScreenState();
}

class _MyFloatingScreenState extends State<MyFloatingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.item.content),
      ),
    );
  }
}
