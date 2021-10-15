import 'package:flutter/material.dart';
import 'package:flutter_lesson/models/item.dart';

class MyAlerDialogScreen extends StatefulWidget {
  final Item item;

  MyAlerDialogScreen(this.item);
  @override
  _MyAlerDialogScreenState createState() => _MyAlerDialogScreenState();
}


class _MyAlerDialogScreenState extends State<MyAlerDialogScreen> {
  String text = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alert Dialog"),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              alert(context);
            },
            child: Text("Click"),
          ),
          Text(this.text)
        ],
      ),
    );
  }

  void alert(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text("Alert Dialog"),
        content: Text("Anh có yêu em không ?"),
        actions: [
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop('Ok');
              Text("Yeeu");
              setState(() {
                this.text = "yeu";
              });

            },
            child: Text("Ok"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop('No');
              setState(() {
                this.text = 'Khong yeu';
              });
            },
            child: Text("No"),
          )
        ],
      ),
    );
  }
}
