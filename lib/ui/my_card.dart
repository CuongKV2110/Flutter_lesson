import 'package:flutter/material.dart';
import 'package:flutter_lesson/models/item.dart';

class MyCardScreen extends StatefulWidget {
  final Item item;

  MyCardScreen(this.item);
  @override
  _MyCardScreenState createState() => _MyCardScreenState();
}

class _MyCardScreenState extends State<MyCardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
      ),
      body: ListView(
        children: [
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: BorderSide(width: 2, color: Colors.black),
            ),
            margin: EdgeInsets.fromLTRB(10, 4, 10, 0),
            shadowColor: Colors.black,
            color: Colors.greenAccent,
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://scontent.fhan3-3.fna.fbcdn.net/v/t1.6435-9/161658634_1172746816519222_269010112469570162_n.jpg?_nc_cat=108&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=Xzbw0n6vNbEAX-4BtVh&_nc_ht=scontent.fhan3-3.fna&oh=90ced544685c3e54cf8496c14ae29126&oe=61610CC9"),
                backgroundColor: Colors.cyan[100],
              ),
              title: Text("Kiều Văn Cường"),
              subtitle: Text("Fresher Developer"),
              trailing: Icon(Icons.pending, color: Colors.black54),
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: BorderSide(width: 2, color: Colors.black),
            ),
            margin: EdgeInsets.fromLTRB(10, 4, 10, 0),
            color: Colors.cyanAccent,
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS1EaN4prAvI0Bgrcbd1u0WRFgitv-vNBX5qw&usqp=CAU"),
                backgroundColor: Color(0xffFDCF09),
              ),
              title: Text("Nguyễn Ngọc Yến"),
              subtitle: Text("Intern Developer"),
              trailing: Icon(Icons.pending, color: Colors.black54),
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: BorderSide(width: 2, color: Colors.black),
            ),
            margin: EdgeInsets.fromLTRB(10, 4, 10, 0),
            color: Colors.lightGreenAccent,
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSF3f4-ZFXn4tMJI7o4K2Jevg4flyxRwJQpvQ&usqp=CAU"),
                backgroundColor: Colors.cyan[100],
              ),
              title: Text("Trần Phương Nhung"),
              subtitle: Text("Accountant"),
              trailing: Icon(Icons.pending, color: Colors.black54),
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: BorderSide(width: 2, color: Colors.black),
            ),
            margin: EdgeInsets.all(10),
            color: Colors.white54,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Salary",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          fontSize: 40,
                          color: Colors.orange),
                    )
                  ],
                ),
                Row(
                  children: [
                    TextButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.attach_money),
                      label: Text(
                        "Salary/Day",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    Spacer(
                      flex: 2,
                    ),
                    Text("180 Dollar"),
                    SizedBox(width: 10)
                  ],
                ),
                Row(
                  children: [
                    TextButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.pending_actions),
                      label: Text(
                        "Days Work",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    Spacer(
                      flex: 2,
                    ),
                    Text("29 days"),
                    SizedBox(width: 10)
                  ],
                ),
                Row(
                  children: [
                    TextButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.analytics_outlined),
                      label: Text(
                        "Totals Salary",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    Spacer(
                      flex: 2,
                    ),
                    Text("5.220 Dollar"),
                    SizedBox(width: 10)
                  ],
                )
              ],
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: BorderSide(width: 2, color: Colors.black),
            ),
            margin: EdgeInsets.all(10),
            color: Colors.white54,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Details",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          fontSize: 40,
                          color: Colors.redAccent),
                    )
                  ],
                ),
                Row(
                  children: [
                    TextButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.app_registration),
                      label: Text(
                        "KPI",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    Spacer(
                      flex: 2,
                    ),
                    Text("13/15 Percent"),
                    SizedBox(width: 10)
                  ],
                ),
                Row(
                  children: [
                    TextButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.assignment_outlined),
                      label: Text(
                        "Projects",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    Spacer(
                      flex: 2,
                    ),
                    Text("9 Project"),
                    SizedBox(width: 10)
                  ],
                ),
                Row(
                  children: [
                    TextButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.analytics_outlined),
                      label: Text(
                        "Totals Revenue",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    Spacer(
                      flex: 2,
                    ),
                    Text("450.000 Dollar"),
                    SizedBox(width: 10)
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
