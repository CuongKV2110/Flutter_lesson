import 'package:flutter/material.dart';
import 'package:flutter_lesson/models/item.dart';

class MyRowColumnScreen extends StatefulWidget {
  final Item item;

  MyRowColumnScreen(this.item);

  @override
  _MyRowColumnScreenState createState() => _MyRowColumnScreenState();
}

class _MyRowColumnScreenState extends State<MyRowColumnScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.item.content),
      ),
      body: Column(
        children: [
          _buildRow1(),
          _buildRow2(),
          _buildRow3(),
          SizedBox(
            height: 20,
          ),
          _buildColumn(),
        ],
      ),
    );
  }

  Widget _buildRow1() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Icon(
          Icons.android,
          color: Colors.lightGreen,
          size: 40,
        ),
        Icon(
          Icons.airplanemode_active,
          color: Colors.orange,
          size: 40,
        ),
        Icon(
          Icons.directions_bike,
          color: Colors.blue,
          size: 40,
        ),
        Icon(
          Icons.train,
          color: Colors.purple,
          size: 40,
        ),
      ],
    );
  }

  Widget _buildRow2() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.baseline,
      textBaseline: TextBaseline.alphabetic,
      children: [
        Text("Row 1"),
        TextButton(
          onPressed: () {},
          child: Text(
            "Hello 2",
            style: TextStyle(color: Colors.black),
          ),
          style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all(Colors.lightGreenAccent)),
        ),
        Text("Row 2")
      ],
    );
  }

  Widget _buildRow3() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Spacer(
          flex: 2,
        ),
        Text("Row 2"),
        Spacer(
          flex: 2,
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            "I'm Text Button",
            style: TextStyle(color: Colors.blue),
          ),
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.yellow)),
        ),
        Spacer(
          flex: 1,
        ),
        Icon(
          Icons.airplanemode_active,
          size: 40,
          color: Colors.blue,
        ),
        Spacer(
          flex: 3,
        )
      ],
    );
  }

  Widget _buildColumn() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(
          Icons.directions,
          size: 40,
          color: Colors.orange,
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            "I'm Text Button",
            style: TextStyle(color: Colors.blue),
          ),
          style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all(Colors.lightGreenAccent)),
        ),
        Icon(
          Icons.local_library_outlined,
          size: 40,
          color: Colors.blue,
        ),
      ],
    );
  }
}
