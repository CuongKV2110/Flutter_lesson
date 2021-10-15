import 'package:flutter/material.dart';
import 'package:flutter_lesson/models/item.dart';

class MyRadioScreen extends StatefulWidget {
  final Item item;

  MyRadioScreen(this.item);

  @override
  _MyRadioScreenState createState() => _MyRadioScreenState();
}

class _MyRadioScreenState extends State<MyRadioScreen> {
  int _cau1 = 0;
  int _cau2 = 0;
  int _cau3 = 0;
  int _cau4 = 0;
  int _listradio = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Radio Button"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            RadioListTile(
              value: 1,
              groupValue: _listradio,
              title: Text("Radio ListTile"),
              subtitle: Text("Demo 2021"),
              secondary: Icon(Icons.home),
              toggleable: true,
              controlAffinity: ListTileControlAffinity.leading,
              onChanged: (value) {
                setState(() {
                  _listradio = int.parse(value.toString());
                });
              },
            ),
            RadioListTile(
              value: 2,
              groupValue: _listradio,
              title: Text("Radio ListTile"),
              subtitle: Text("Demo 2022"),
              secondary: Icon(Icons.home),
              toggleable: true,
              controlAffinity: ListTileControlAffinity.leading,
              onChanged: (value) {
                setState(() {
                  _listradio = int.parse(value.toString());
                });
              },
            ),
            Column(
              children: [
                Padding(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 6,
                        ),
                        Text("Câu 1: Messi đã giành được bao nhiêu QBV ?",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    )),
                Row(
                  children: [
                    Radio(
                        value: 1,
                        groupValue: _cau1,
                        onChanged: (value) {
                          setState(() {
                            _cau1 = int.parse(value.toString());
                          });
                        }),
                    Text("5")
                  ],
                ),
                Row(
                  children: [
                    Radio(
                        value: 2,
                        groupValue: _cau1,
                        onChanged: (value) {
                          setState(() {
                            _cau1 = int.parse(value.toString());
                          });
                        }),
                    Text("6")
                  ],
                ),
                Row(
                  children: [
                    Radio(
                        value: 3,
                        groupValue: _cau1,
                        onChanged: (value) {
                          setState(() {
                            _cau1 = int.parse(value.toString());
                          });
                        }),
                    Text("7")
                  ],
                ),
              ],
            ),
            Column(
              children: [
                Padding(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 6,
                        ),
                        Text("Câu 2: Ronaldo đang thi đấu cho CLB nào ?",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    )),
                Row(
                  children: [
                    Radio(
                        value: 1,
                        groupValue: _cau2,
                        onChanged: (value) {
                          setState(() {
                            _cau2 = int.parse(value.toString());
                          });
                        }),
                    Text("Real Madrid")
                  ],
                ),
                Row(
                  children: [
                    Radio(
                        value: 2,
                        groupValue: _cau2,
                        onChanged: (value) {
                          setState(() {
                            _cau2 = int.parse(value.toString());
                          });
                        }),
                    Text("Juventus")
                  ],
                ),
                Row(
                  children: [
                    Radio(
                        value: 3,
                        groupValue: _cau2,
                        onChanged: (value) {
                          setState(() {
                            _cau2 = int.parse(value.toString());
                          });
                        }),
                    Text("Man UTD")
                  ],
                ),
              ],
            ),
            Column(
              children: [
                Padding(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 6,
                        ),
                        Wrap(
                          children: [
                            Text("Câu 3: CLB nào vô địch NHA 2020/2021 ?",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                          ],
                        )
                      ],
                    )),
                Row(
                  children: [
                    Radio(
                        value: 1,
                        groupValue: _cau3,
                        onChanged: (value) {
                          setState(() {
                            _cau3 = int.parse(value.toString());
                          });
                        }),
                    Text("Arsenal")
                  ],
                ),
                Row(
                  children: [
                    Radio(
                        value: 2,
                        groupValue: _cau3,
                        onChanged: (value) {
                          setState(() {
                            _cau3 = int.parse(value.toString());
                          });
                        }),
                    Text("Chelsea")
                  ],
                ),
                Row(
                  children: [
                    Radio(
                        value: 3,
                        groupValue: _cau3,
                        onChanged: (value) {
                          setState(() {
                            _cau3 = int.parse(value.toString());
                          });
                        }),
                    Text("Man City")
                  ],
                ),
              ],
            ),
            Column(
              children: [
                Padding(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 6,
                        ),
                        Wrap(
                          children: [
                            Text("Câu 4: Cầu thủ nào giành được QBV 2018 ?",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                          ],
                        )
                      ],
                    )),
                Row(
                  children: [
                    Radio(
                        value: 1,
                        groupValue: _cau4,
                        onChanged: (value) {
                          setState(() {
                            _cau4 = int.parse(value.toString());
                          });
                        }),
                    Text("Messi")
                  ],
                ),
                Row(
                  children: [
                    Radio(
                        value: 2,
                        groupValue: _cau4,
                        onChanged: (value) {
                          setState(() {
                            _cau4 = int.parse(value.toString());
                          });
                        }),
                    Text("Ronaldo")
                  ],
                ),
                Row(
                  children: [
                    Radio(
                        value: 3,
                        groupValue: _cau4,
                        onChanged: (value) {
                          setState(() {
                            _cau4 = int.parse(value.toString());
                          });
                        }),
                    Text("Luka Modric")
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
