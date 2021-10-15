import 'package:flutter/material.dart';
import 'package:flutter_lesson/models/item.dart';

class MyDropdownScreen extends StatefulWidget {
  final Item item;

  MyDropdownScreen(this.item);

  @override
  _MyDropdownScreenState createState() => _MyDropdownScreenState();
}

class _MyDropdownScreenState extends State<MyDropdownScreen> {
  String _selectedItem = 'Football';
  List _options = [
    'Football',
    'Volleyball',
    'Badminton',
    'Swimming',
    'Tennis',
    'Golf',
    'Basketball'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DropDown Example"),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Sport you choose is: $_selectedItem"),
              DropdownButton(
                hint: Text("Choose the sport"),
                style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                value: _selectedItem,
                items: _options
                    .map(
                      (day) => DropdownMenuItem(
                    child: Text(day),
                    value: day,
                  ),
                )
                    .toList(),
                onChanged: (value) {
                  setState(() {
                    _selectedItem = value.toString();
                  });
                },
              ),
            ]),
      ),
    );
  }
}
