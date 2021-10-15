import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lesson/models/item.dart';

class MyScaffoldScreen extends StatefulWidget {
  final Item item;

  MyScaffoldScreen(this.item);

  @override
  State<StatefulWidget> createState() {
    return _MyScaffoldState();
  }
}

class _MyScaffoldState extends State<MyScaffoldScreen> {
  String _text = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Scaffold"),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications_active),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.account_circle_sharp),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.people),
          ),
        ],
      ),
      drawer: _buildDrawer(),
      body: Center(
        child: Text(_text),
      ),
    );
  }

  Widget _buildDrawer() {
    return Drawer(
      child: ListView(
        children: const <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.green,
            ),
            child: Icon(Icons.sentiment_satisfied),
          ),
          ListTile(
            title: Text('School'),
            leading: Icon(Icons.school),
          ),
          ListTile(
            title: Text('Wifi'),
            leading: Icon(Icons.wifi),
          ),
          ListTile(
            title: Text('Bluetooth'),
            leading: Icon(Icons.bluetooth),
          ),
          ListTile(
            title: Text('Shopping'),
            leading: Icon(Icons.shopping_cart),
          ),
          ListTile(
            title: Text('Weather'),
            leading: Icon(Icons.wb_sunny),
          ),
          ListTile(
            title: Text('Camera'),
            leading: Icon(Icons.add_a_photo),
          ),
        ],
      ),
    );
  }
}
