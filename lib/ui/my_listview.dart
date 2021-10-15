import 'package:flutter/material.dart';
import 'package:flutter_lesson/models/club.dart';
import 'package:flutter_lesson/models/item.dart';

class MyListViewScreen extends StatefulWidget {
  final Item item;

  MyListViewScreen(this.item);

  @override
  _MyListViewScreenState createState() => _MyListViewScreenState();
}

class _MyListViewScreenState extends State<MyListViewScreen> {
  String ball =
      "https://www.kindpng.com/picc/m/621-6215431_champions-league-ball-2020-hd-png-download.png";
  List<Club> listClub = [];

  @override
  void initState() {
    super.initState();
    initData();
  }

  initData() {
    listClub.add(Club(
      name1: "Man UTD",
      name2: "Real Madrid",
      score: "3 - 1",
      img1:
          "https://cdn.freebiesupply.com/images/large/2x/manchester-united-logo-png-transparent.png",
      img2: "https://realmadrid24.football/wp-content/uploads/2021/04/123.jpg",
    ));
    listClub.add(Club(
      name1: "Man City",
      name2: "PSG",
      score: "3 - 3",
      img1:
          "https://upload.wikimedia.org/wikipedia/vi/thumb/1/1d/Manchester_City_FC_logo.svg/1200px-Manchester_City_FC_logo.svg.png",
      img2:
          "https://upload.wikimedia.org/wikipedia/vi/thumb/a/a7/Paris_Saint-Germain_F.C..svg/1200px-Paris_Saint-Germain_F.C..svg.png",
    ));
    listClub.add(Club(
      name1: "Barcelona",
      name2: "Bayern Munich",
      score: "0 - 4",
      img1:
          "https://dlscenter.com/wp-content/uploads/2017/06/Barcelona-logo-dream-league-soccer.png",
      img2:
          "https://upload.wikimedia.org/wikipedia/commons/thumb/1/1b/FC_Bayern_M%C3%BCnchen_logo_%282017%29.svg/1200px-FC_Bayern_M%C3%BCnchen_logo_%282017%29.svg.png",
    ));
    listClub.add(Club(
      name1: "Liverpool",
      name2: "Atletico Madrid",
      score: "2 - 2",
      img1:
          "https://upload.wikimedia.org/wikipedia/vi/thumb/0/0c/Liverpool_FC.svg/175px-Liverpool_FC.svg.png",
      img2:
          "https://upload.wikimedia.org/wikipedia/vi/thumb/f/f4/Atletico_Madrid_2017_logo.svg/1200px-Atletico_Madrid_2017_logo.svg.png",
    ));
    listClub.add(Club(
      name1: "Juventus",
      name2: "Chelsea",
      score: "0 - 2",
      img1:
          "http://logovina.com/wp-content/uploads/2016/12/Logo-doi-bong-da-juventus.jpg",
      img2:
          "https://cdn.freebiesupply.com/logos/large/2x/chelsea-fc-2-logo-png-transparent.png",
    ));
    listClub.add(Club(
      name1: "Dortmund",
      name2: "Tottenham",
      score: "1 - 1",
      img1:
          "https://upload.wikimedia.org/wikipedia/commons/thumb/6/67/Borussia_Dortmund_logo.svg/200px-Borussia_Dortmund_logo.svg.png",
      img2:
          "https://toppng.com/uploads/preview/tottenham-hotspur-logo-png-11536009313fpycvx8zzf.png",
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List View"),
      ),
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Column(
          children: [
            Image.network(
                "https://cdn1.tuoitre.vn/zoom/600_315/2021/9/14/lich-truyen-hinhcpl14-9-16315581322171042983652-crop-16315583045131727705261.jpg"),
            Image.network(
                "https://cdn.tgdd.vn/Files/2021/09/03/1379974/lich-thi-dau-cup-c1-champions-league-2021-2022.jpg"),
            _buildTab(),
            _buildResult(),
            Image.network(
                "https://vcdn-thethao.vnecdn.net/2021/08/25/16267259734757-7144-1629898780.jpg"),
          ],
        ),
      ),
    );
  }

  Widget _buildTab() {
    return Container(
      width: MediaQuery.of(context).size.width * 1,
      height: 40,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(2), border: Border.all(width: 2)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 30,
            width: MediaQuery.of(context).size.width * 0.32,
            color: Colors.lightBlue,
            child: Center(
              child: Text("Kết quả"),
            ),
          ),
          Container(
            height: 30,
            width: MediaQuery.of(context).size.width * 0.32,
            color: Colors.green,
            child: Center(
              child: Text("Lịch thi đấu"),
            ),
          ),
          Container(
            height: 30,
            width: MediaQuery.of(context).size.width * 0.32,
            color: Colors.yellow,
            child: Center(
              child: Text("Bảng Xếp Hạng"),
            ),
          ),
        ],
      ),
    );
  }
  Widget _buildResult() {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      itemCount: listClub.length,
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Card(
          color: Colors.cyan,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildTeamLeft(index),
              _buildScore(index),
              _buildTeamRight(index)
            ],
          ),
          shape: RoundedRectangleBorder(
              side: BorderSide(width: 2, color: Colors.black),
              borderRadius: BorderRadius.circular(10)),
        );
      },
    );
  }
  Widget _buildTeamLeft(int index) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.35,
      height: MediaQuery.of(context).size.height * 0.12,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: Colors.white,
            backgroundImage: NetworkImage(listClub[index].img1),
          ),
          Text(
            listClub[index].name1,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ],
      ),
    );
  }

  Widget _buildTeamRight(int index) {
    return Container(
        width: MediaQuery.of(context).size.width * 0.35,
        height: MediaQuery.of(context).size.height * 0.12,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: Colors.white,
              backgroundImage: NetworkImage(listClub[index].img2),
            ),
            Text(
              listClub[index].name2,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            )
          ],
        ));
  }

  Widget _buildScore(int index) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.18,
      height: MediaQuery.of(context).size.height * 0.12,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            listClub[index].score,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
          ),
          SizedBox(
            height: 6,
          ),
          Container(
            width: 20,
            height: 20,
            child: CircleAvatar(
              backgroundColor: Colors.white,
              backgroundImage: NetworkImage(ball),
            ),
          ),
        ],
      ),
    );
  }
}
