import 'package:flutter/material.dart';
import 'package:flutter_lesson/models/item.dart';

class MyButtonScreen extends StatefulWidget {
  final Item item;

  MyButtonScreen(this.item);

  @override
  _MyButtonScreenState createState() => _MyButtonScreenState();
}

class _MyButtonScreenState extends State<MyButtonScreen> {
  bool _flag = true;
  int text = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.item.content),
      ),
      body: Column(
        children: [
          TextButton(
            style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: BorderSide(color: Colors.red))),
                backgroundColor: MaterialStateProperty.all(Colors.yellow)),
            onPressed: () {},
            child: Text("FlatButton 1"),
          ),
          TextButton(
            style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: BorderSide(color: Colors.yellow))),
                backgroundColor: MaterialStateProperty.all(Colors.green)),
            onPressed: () {},
            child: Text("FlatButton 2"),
          ),
          TextButton.icon(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.purple)),
              onPressed: () {},
              icon: Icon(
                Icons.android,
                color: Colors.greenAccent,
              ),
              label: Text("Android")),
          ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.orange)),
            onPressed: () {},
            child: Text(
              "Raised Button 1",
              style: TextStyle(color: Colors.black),
            ),
          ),
          ElevatedButton.icon(
            onPressed: () {
              setState(() {
                _flag = !_flag;
              });
            },
            icon: Icon(Icons.android),
            label: Text("Button Pressed"),
            style: ElevatedButton.styleFrom(
              onPrimary: _flag ? Colors.yellow : Colors.lightGreenAccent,
              primary: _flag ? Colors.black : Colors.purple,
            ),
          ),
          ElevatedButton.icon(
            onPressed: () {
              this.setState(() {
                this.text++;
              });
            },
            icon: Icon(
              Icons.android,
              color: Colors.lightGreen,
            ),
            label: Text("Text " + text.toString()),
            style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: BorderSide(color: Colors.black),
                ),
              ),
            ),
          ),
          TextButton(
            style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: BorderSide(color: Colors.black))),
                backgroundColor: MaterialStateProperty.all(Colors.yellow)),
            onPressed: () {
              this.setState(() {
                this.text = 0;
              });
            },
            child: Text("Reset"),
          )
        ],
      ),
    );
  }
}
