import 'package:flutter/material.dart';
import 'package:flutter_lesson/models/item.dart';

class MyCheckBoxScreen extends StatefulWidget {

  final Item item;

  MyCheckBoxScreen(this.item);
  @override
  _MyCheckBoxScreenState createState() => _MyCheckBoxScreenState();
}

class _MyCheckBoxScreenState extends State<MyCheckBoxScreen> {
  bool _check1 = false;
  bool _check2 = false;
  bool _listtile1 = false;
  bool _listtile2 = false;
  bool _listtile3 = false;

  bool _check11 = false;
  bool _check12 = false;
  bool _check13 = false;
  bool _check14 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello"),
      ),
      body: Column(
        children: [
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Text("Bạn có bị be-de không ?"),
              Checkbox(
                value: _check1,
                activeColor: Colors.red,
                checkColor: Colors.green,
                onChanged: (value) {
                  setState(() {
                    _check1 = value!;
                  });
                },
              ),
              Checkbox(
                value: _check2,
                activeColor: Colors.orange,
                onChanged: (value) {
                  setState(() {
                    _check2 = value!;
                  });
                },
              )
            ],
          ),
          Column(
            children: [
              Text("Cầu thủ nào đang chơi cho Manchester United ?"),
              Row(
                children: [
                  Checkbox(
                    value: _check11,
                    activeColor: Colors.orange,
                    onChanged: (value) {
                      setState(() {
                        _check11 = value!;
                      });
                    },
                  ),
                  Text("Cristiano Ronaldo")
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    value: _check12,
                    activeColor: Colors.orange,
                    onChanged: (bool? value) {
                      setState(() {
                        _check12 = value!;
                      });
                    },
                  ),
                  Text("Lionel Messi")
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    value: _check13,
                    activeColor: Colors.orange,
                    onChanged: (value) {
                      setState(() {
                        _check13 = value!;
                      });
                    },
                  ),
                  Text("Bruno Fernandes")
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    value: _check14,
                    activeColor: Colors.orange,
                    onChanged: (value) {
                      setState(() {
                        _check14 = value!;
                      });
                    },
                  ),
                  Text("Kevin De Bruyne")
                ],
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(40, 0, 60, 0),
            child: Card(
              shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.black, width: 2),
                borderRadius: BorderRadius.circular(10),
              ),
              color: Colors.orange,
              child: CheckboxListTile(
                tristate: true,
                //Chon roi thi khong duoc huy
                value: _listtile1,
                secondary: Icon(
                  Icons.alarm,
                  color: Colors.black,
                  size: 40,
                ),
                title: Text(
                  "Ringing at 5am",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text("Every day"),
                onChanged: (value) {
                  setState(() {
                    _listtile1 = value!;
                  });
                },
              ),
            ),
          ),
          Card(
            color: Colors.yellow,
            shape: RoundedRectangleBorder(
              side: BorderSide(color: Colors.black, width: 2),
              borderRadius: BorderRadius.circular(10),
            ),
            child: CheckboxListTile(
              value: _listtile2,
              selectedTileColor: Colors.red,
              secondary: Icon(
                Icons.directions_bike,
                color: Colors.black,
                size: 40,
              ),
              title: Text(
                "Sports at 5:30 pm",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text("Every day"),
              onChanged: (value) {
                setState(() {
                  _listtile2 = value!;
                });
              },
            ),
          ),
          Card(
            color: Colors.lightGreen,
            shape: RoundedRectangleBorder(
              side: BorderSide(color: Colors.black, width: 2),
              borderRadius: BorderRadius.circular(10),
            ),
            child: CheckboxListTile(
              value: _listtile3,
              selectedTileColor: Colors.red,
              secondary: Icon(
                Icons.laptop_chromebook,
                color: Colors.black,
                size: 40,
              ),
              title: Text(
                "Study at 8:30 pm - 10h30 pm",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text("Every day"),
              onChanged: (value) {
                setState(() {
                  _listtile3 = value!;
                });
              },
            ),
          )
        ],
      ),
    );
  }
}
