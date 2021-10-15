import 'package:flutter/material.dart';
import 'package:flutter_lesson/models/item.dart';

class MyContainerScreen extends StatefulWidget {
  final Item item;

  MyContainerScreen(this.item);

  
  @override
  _MyContainerScreenState createState() => _MyContainerScreenState();
}

class _MyContainerScreenState extends State<MyContainerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.item.content),
      ),
      body: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.all(20),
        padding: EdgeInsets.all(30),
        width: MediaQuery.of(context).size.width * 1,
        height: MediaQuery.of(context).size.height * 0.5,
        decoration: BoxDecoration(
            color: Colors.lightGreenAccent,
            border: Border.all(width: 4, color: Colors.red),
            borderRadius: BorderRadius.circular(60)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.center,
                  width: 100,
                  height: 100,
                  transform: Matrix4.rotationZ(0.1),
                  child: Text(
                    "Hello! I am in the container widget!!",
                    style: TextStyle(fontSize: 15),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.lightBlue,
                      border: Border.all(width: 2, color: Colors.black),
                      borderRadius: BorderRadius.circular(10)),
                ),
                SizedBox(height: 50),
                Container(
                  alignment: Alignment.center,
                  width: 100,
                  height: 50,
                  child: Text("Column 1"),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(width: 2, color: Colors.black),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ],
            ),
            SizedBox(width: 50),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.center,
                  width: 100,
                  height: 40,
                  child: Text("Row 1"),
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      border: Border.all(width: 2, color: Colors.black),
                      borderRadius: BorderRadius.circular(10)),
                ),
                SizedBox(height: 20),
                Container(
                  alignment: Alignment.center,
                  width: 100,
                  height: 40,
                  child: Text("Row 2"),
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      border: Border.all(width: 2, color: Colors.black),
                      borderRadius: BorderRadius.circular(10)),
                ),
                SizedBox(height: 20),
                Container(
                  alignment: Alignment.center,
                  width: 100,
                  height: 40,
                  child: Text("Row 3"),
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      border: Border.all(width: 2, color: Colors.black),
                      borderRadius: BorderRadius.circular(10)),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
