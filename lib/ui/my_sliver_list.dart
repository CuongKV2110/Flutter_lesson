import 'package:flutter/material.dart';
import 'package:flutter_lesson/models/item.dart';

class MySLiverScreen extends StatefulWidget {
  final Item item;

  MySLiverScreen(this.item);

  @override
  _MySLiverScreenState createState() => _MySLiverScreenState();
}

class _MySLiverScreenState extends State<MySLiverScreen> {
  List _list = [
    "Manchester United",
    "Manchester City",
    "Chelsea",
    "Liverpool",
    "Arsenal",
    "Tottenham",
    "Real Madrid",
    "Barcelona",
    "Atletico Madrid",
    "Paris Saint Germain",
    "Bayern Munich",
    "Dortmund",
    "Juventus",
    "Leicester",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sliver List"),
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            stretch: true,
            toolbarHeight: 30,
            flexibleSpace: FlexibleSpaceBar(
              stretchModes: [
                StretchMode.zoomBackground,
                StretchMode.blurBackground
              ],
              background: Image.network(
                'https://img.maximummedia.ie/sportsjoe_ie/eyJkYXRhIjoie1widXJsXCI6XCJodHRwOlxcXC9cXFwvbWVkaWEtc3BvcnRzam9lLm1heGltdW1tZWRpYS5pZS5zMy5hbWF6b25hd3MuY29tXFxcL3dwLWNvbnRlbnRcXFwvdXBsb2Fkc1xcXC8yMDIxXFxcLzA4XFxcLzA0MTQ1ODUxXFxcL3JldWJzX2ZlYXR1cmVfYmFkZ2VzLnBuZ1wiLFwid2lkdGhcIjo2NDcsXCJoZWlnaHRcIjozNDAsXCJkZWZhdWx0XCI6XCJodHRwczpcXFwvXFxcL3d3dy5zcG9ydHNqb2UuaWVcXFwvYXNzZXRzXFxcL2ltYWdlc1xcXC9zcG9ydHNqb2VcXFwvbm8taW1hZ2UucG5nP2lkPTY1Y2QzMmUyNWM1MzA3ZjY1YWVkXCIsXCJvcHRpb25zXCI6W119IiwiaGFzaCI6ImRmNTIxZDEzNzIyMTliNzUxYzM4ZmJlYjlhZTQ1ZmMwOGM0ZTJkOWEifQ==/reubs-feature-badges.png',
                fit: BoxFit.cover,
              ),
            ),
            backgroundColor: Colors.lightBlue,
            expandedHeight: 220,
            collapsedHeight: 50,
            // floating: true,
            pinned: true,
            automaticallyImplyLeading: false,
            title: Text(
              "Premier League",
              style: TextStyle(color: Colors.black),
            ),
            // bottom: PreferredSize(
            //   preferredSize: Size.fromHeight(20.0),
            //   child: Text('Premier League'),
            // ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 30,
              child: Center(
                child: Text("Sliver Box Adapter"),
              ),
            ),
          ),
          SliverAppBar(
            stretch: true,
            flexibleSpace: FlexibleSpaceBar(
              stretchModes: <StretchMode>[
                StretchMode.zoomBackground,
                StretchMode.blurBackground
              ],
              background: Image.network(
                  'https://st1.latestly.com/wp-content/uploads/2020/08/EPL.jpg'),
            ),
            expandedHeight: 200,
            floating: false,
            snap: false,
            pinned: true,
            backgroundColor: Colors.yellow,
            // floating: true,
            title: Text(
              "Sliver List",
              style: TextStyle(color: Colors.black),
            ),
            automaticallyImplyLeading: false,
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Card(
                  color: Colors.lightGreenAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: BorderSide(width: 2, color: Colors.black),
                  ),
                  child: Container(
                    height: 50,
                    alignment: Alignment.center,
                    child: Text(_list[index]),
                    // color: Colors.orange[100*(index%9)],
                  ),
                );
              },
              childCount: _list.length,
            ),
          ),
          SliverGrid(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Padding(
                  padding: EdgeInsets.all(6),
                  child: Container(
                    height: 50,
                    alignment: Alignment.center,
                    // color: Colors.cyanAccent,
                    child: Text(_list[index]),
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      border: Border.all(width: 2, color: Colors.black),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                );
              },
              childCount: _list.length,
            ),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, //so cot
                mainAxisSpacing: 10, // khonag cach theo chieu doc
                crossAxisSpacing: 10, //khoang cach theo chieu ngang
                childAspectRatio: 3.0), //do dai cua con
          ),
        ],
      ),
    );
  }
}
