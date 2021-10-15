import 'package:flutter/material.dart';
import 'package:flutter_lesson/models/item.dart';

class MySimpleDialogScreen extends StatefulWidget {

  final Item item;

  MySimpleDialogScreen(this.item);
  @override
  _MySimpleDialogScreenState createState() => _MySimpleDialogScreenState();
}

enum Answer { YES, NO, MAYBE }

class _MySimpleDialogScreenState extends State<MySimpleDialogScreen> {
  String _answer = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Simple Dialog"),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                _askUser();
              },
              child: Text("Click Me !!!"),
            ),
            Text(_answer),
          ],
        ),
      ),
    );
  }

  Future _askUser() async {
    switch (await showDialog(
      context: context,
      builder: (BuildContext) {
        return SimpleDialog(
          title: Text("DO you love me ? "),
          children: [
            SimpleDialogOption(
              onPressed: () {
                Navigator.pop(context, Answer.YES);
              },
              child: Text("YES"),
            ),
            SimpleDialogOption(
              onPressed: () {
                Navigator.pop(context, Answer.NO);
              },
              child: Text("NO"),
            ),
            SimpleDialogOption(
              onPressed: () {
                Navigator.pop(context, Answer.MAYBE);
              },
              child: Text("MAYBE"),
            )
          ],
        );
      },
    )) {
      case Answer.YES:
        setAnswer('You click YES');
        break;
      case Answer.NO:
        setAnswer('You click NO');
        break;
      case Answer.MAYBE:
        setAnswer('You click MAYBE');
        break;
    }
  }

  void setAnswer(String s) {
    setState(() {
      _answer = s;
    });
  }
}
