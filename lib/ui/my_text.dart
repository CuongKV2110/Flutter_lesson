import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lesson/models/item.dart';

class MyTextScreen extends StatefulWidget {
  final Item item;

  MyTextScreen(this.item);

  @override
  _MyTextScreenState createState() => _MyTextScreenState();
}

class _MyTextScreenState extends State<MyTextScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.item.content),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          defaultText(),
          google(),
          richText(),
        ],
      ),
    );
  }
  Widget google() {
    return Center(
      child: RichText(
        text: TextSpan(children: <TextSpan>[
          TextSpan(
              text: "G",
              style: TextStyle(
                color: Colors.blue,
                fontSize: 60,
                fontWeight: FontWeight.bold,
              )),
          TextSpan(
              text: "o",
              style: TextStyle(
                color: Colors.red,
                fontSize: 60,
                fontWeight: FontWeight.bold,
              )),
          TextSpan(
              text: "o",
              style: TextStyle(
                color: Colors.yellow,
                fontSize: 60,
                fontWeight: FontWeight.bold,
              )),
          TextSpan(
              text: "g",
              style: TextStyle(
                color: Colors.blue,
                fontSize: 60,
                fontWeight: FontWeight.bold,
              )),
          TextSpan(
              text: "l",
              style: TextStyle(
                  color: Colors.green,
                  fontSize: 60,
                  fontWeight: FontWeight.bold)),
          TextSpan(
              text: "e",
              style: TextStyle(
                  color: Colors.red, fontSize: 60, fontWeight: FontWeight.bold)),
        ]),
      ),
    );
  }
  Widget richText() {
    return Column(
      children: [
        RichText(
          text: TextSpan(
            text: "Do you have an account ? ",
            style: TextStyle(color: Colors.black, fontSize: 16),
            children: <TextSpan>[
              TextSpan(
                text: " Sign ",
                style: TextStyle(color: Colors.orange, fontSize: 16),
                recognizer: TapGestureRecognizer(),
              ),
              TextSpan(
                text: " Create ",
                style: TextStyle(color: Colors.red, fontSize: 16),
                recognizer: TapGestureRecognizer(),
              ),
            ],
          ),
        ),
        RichText(
          text: TextSpan(
            text: "Quên mật khẩu ",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            children: [
              TextSpan(
                  text: "Lấy lại mật khẩu",
                  style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.normal,
                      color: Colors.blue))
            ],
          ),
        ),
        RichText(
            text: TextSpan(
                text: "hello",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)))
      ],
    );
  }
  Widget defaultText() {
    return Text(
      "Hello everyone. My name Kieu Van Cuong",
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.italic,
        fontSize: 30,
        wordSpacing: 10,
        color: Colors.purple,
        backgroundColor: Colors.tealAccent,
        shadows: [
          Shadow(color: Colors.red, offset: Offset(2, 1), blurRadius: 10)
        ],
      ),
    );
  }

}

