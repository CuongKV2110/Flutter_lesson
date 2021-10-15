import 'package:flutter/material.dart';
import 'package:flutter_lesson/models/item.dart';

class MyListTileScreen extends StatefulWidget {

  final Item item;

  MyListTileScreen(this.item);
  @override
  _MyListTileScreenState createState() => _MyListTileScreenState();
}

class _MyListTileScreenState extends State<MyListTileScreen> {
  final listPeople = [
    'Kiều Văn Cường',
    'Nguyễn Tuấn Điệp',
    'Trần Tất Thành',
    'Nguyễn Quang Trung',
    'Đào Văn Đại',
    'Trịnh Văn Hưng'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.item.content),
      ),
      body: ListView.builder(
      itemCount: listPeople.length,
      itemBuilder: (context, index) {
        return Card(
          color: Colors.lightGreenAccent,
          shape: RoundedRectangleBorder(
              side: BorderSide(width: 2, color: Colors.black),
              borderRadius: BorderRadius.circular(6)),
          child: ListTile(
              onTap: (){},
              leading: Icon(Icons.person_rounded, color: Colors.black,),
              title: Text(listPeople[index]),
              trailing: Container(
                alignment: Alignment.center,
                width: 60,
                child: Row(
                  children: [
                    Icon(Icons.chat, color: Colors.black, size: 20,),
                    SizedBox(width: 16),
                    Icon(Icons.call, color: Colors.black, size: 20,),
                  ],
                ),
              )
          ),
        );
      },
    ),
    );
  }
}
