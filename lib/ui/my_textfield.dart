import 'package:flutter/material.dart';
import 'package:flutter_lesson/models/item.dart';

class MyTextFieldScreen extends StatefulWidget {
  final Item item;

  MyTextFieldScreen(this.item);

  @override
  _MyTextFieldScreenState createState() => _MyTextFieldScreenState();
}

class _MyTextFieldScreenState extends State<MyTextFieldScreen> {
  TextEditingController nameControler = TextEditingController();
  TextEditingController passControler = TextEditingController();
  String user = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.item.content),
      ),
      body: _buildTextField(),
    );
  }

  Widget _buildTextField(){
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: TextField(
              controller: nameControler,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black, width: 2.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide:
                  BorderSide(color: Colors.lightBlueAccent, width: 2.0),
                ),
                border: OutlineInputBorder(),
                // labelText: 'User Name',
                icon: Icon(Icons.person_rounded),
                hintText: 'UserName',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: TextField(
              obscureText: true,
              controller: passControler,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black, width: 2.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black, width: 2.0),
                ),
                border: OutlineInputBorder(),
                // labelText: 'User Name',
                icon: Icon(Icons.vpn_key_outlined),
                hintText: 'PassWord',
              ),
            ),
          ),
          Container(
            width: 200,
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      user = nameControler.text;
                      password = passControler.text;
                    });
                  },
                  child: Text("Get Data"),
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide(width: 2, color: Colors.black)),
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      nameControler.text = '';
                      passControler.text = '';
                      user = '';
                      password = '';
                    });
                  },
                  child: Text("Reset Data"),
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide(width: 2, color: Colors.black)),
                    ),
                  ),
                ),
              ],
            ),
          ),

          Container(
            decoration: BoxDecoration(
                border: Border.all(width: 2, color: Colors.black),
                color: Colors.greenAccent,
                borderRadius: BorderRadius.circular(10)),
            alignment: Alignment.center,
            width: 200,
            height: 60,
            // color: Colors.yellow,
            child: Text("User Name: " + user),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(
                border: Border.all(width: 2, color: Colors.black),
                color: Colors.greenAccent,
                borderRadius: BorderRadius.circular(10)),
            alignment: Alignment.center,
            width: 200,
            height: 60,
            // color: Colors.yellow,
            child: Text("Password: " + password),
          ),
          Padding(
            padding: EdgeInsets.all(40),
            child: TextField(
              maxLines: 3,
              keyboardType: TextInputType.datetime,
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.green, width: 2)),
                  border: OutlineInputBorder()),
            ),
          ),
        ],
      ),
    );
  }
}
