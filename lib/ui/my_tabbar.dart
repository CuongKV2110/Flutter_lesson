import 'package:flutter/material.dart';
import 'package:flutter_lesson/models/item.dart';

class MyTabbarScreen extends StatefulWidget {
  final Item item;

  MyTabbarScreen(this.item);

  @override
  _MyTabbarScreenState createState() => _MyTabbarScreenState();
}

class _MyTabbarScreenState extends State<MyTabbarScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(widget.item.content),
          bottom: TabBar(tabs: [
            Tab(
              child: Icon(Icons.directions_bike),
            ),
            Tab(
              child: Icon(Icons.airplanemode_active),
            ),
            Tab(
              child: Icon(Icons.train),
            )
          ]),
        ),
        body: TabBarView(
          children: [
            Icon(Icons.directions_bike),
            Icon(Icons.airplanemode_active),
            Icon(Icons.train),

          ],
        ),
      ),
    );
  }
}
