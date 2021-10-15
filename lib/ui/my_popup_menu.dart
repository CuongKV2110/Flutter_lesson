import 'package:flutter/material.dart';
import 'package:flutter_lesson/models/item.dart';

class MyPopupScreen extends StatefulWidget {
  final Item item;

  MyPopupScreen(this.item);
  @override
  _MyPopupScreenState createState() => _MyPopupScreenState();
}

class _MyPopupScreenState extends State<MyPopupScreen> {
  String _value = '';
  var router;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.item.content),
          actions: [
            _buildPopup()
          ],
        ),
        body: Center(
          child: Text(_value),
        )
    );
  }
  Widget _buildPopup(){
    return PopupMenuButton(
      shape: OutlineInputBorder(
          borderSide: BorderSide(width: 2, color: Colors.black)),
      color: Colors.lightGreenAccent,
      icon: Icon(Icons.more_horiz),
      itemBuilder: (context) => [
        PopupMenuItem(
          child: Text("FaceBook"),
          value: "FaceBook",
        ),
        PopupMenuItem(
          child: Text("Messenger"),
          value: "Messenger",
        ),
        PopupMenuItem(
          child: Text("Instagram"),
          value: "Instagram",
        ),
      ],
      onSelected: (String value) {
        setState(() {
          _value = value;
        });
      },
      onCanceled: () {},
    );
  }
}
