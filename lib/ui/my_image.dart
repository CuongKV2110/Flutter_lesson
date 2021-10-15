import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lesson/models/item.dart';
import 'package:flutter_lesson/models/shoes.dart';

class MyImageScreen extends StatefulWidget {
  final Item item;

  MyImageScreen(this.item);

  @override
  State<StatefulWidget> createState() {
    return _MyImage();
  }
}

class _MyImage extends State<MyImageScreen> {
  List<Shoes> listShoes = [];

  @override
  void initState() {
    super.initState();
    initData();
  }

  initData() {
    listShoes.add(Shoes(name: 'TF1', url: 'assets/TF1.jpg'));
    listShoes.add(Shoes(name: 'TF2', url: 'assets/TF2.jpg'));
    listShoes.add(Shoes(name: 'TF3', url: 'assets/TF3.jpeg'));
    listShoes.add(Shoes(name: 'Tf4', url: 'assets/TF4.jpg'));
    listShoes.add(Shoes(name: 'TF5', url: 'assets/TF5.jpg'));
    listShoes.add(Shoes(name: 'TF6', url: 'assets/TF6.jpg'));
    listShoes.add(Shoes(name: 'TF7', url: 'assets/TF7.jpg'));
    listShoes.add(Shoes(name: 'TF8', url: 'assets/TF8.jpg'));
    listShoes.add(Shoes(name: 'IC1', url: 'assets/IC1.jpg'));
    listShoes.add(Shoes(name: 'IC2', url: 'assets/IC2.jpg'));
    listShoes.add(Shoes(name: 'IC3', url: 'assets/IC3.jpg'));
    listShoes.add(Shoes(name: 'IC4', url: 'assets/IC4.jpg'));
    listShoes.add(Shoes(name: 'IC5', url: 'assets/IC5.jpg'));
    listShoes.add(Shoes(name: 'IC6', url: 'assets/IC6.jpg'));
    listShoes.add(Shoes(name: 'IC7', url: 'assets/IC7.jpg'));
    listShoes.add(Shoes(name: 'AG1', url: 'assets/AG1.png'));
    listShoes.add(Shoes(name: 'AG2', url: 'assets/AG2.jpg'));
    listShoes.add(Shoes(name: 'AG3', url: 'assets/AG3.jpg'));
    listShoes.add(Shoes(name: 'AG4', url: 'assets/AG4.jpg'));
    listShoes.add(Shoes(name: 'AG5', url: 'assets/AG5.jpg'));
    listShoes.add(Shoes(name: 'AG6', url: 'assets/AG6.jpg'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            buildListView(),
            buildGridView(),
            Image.network('https://meta.vn/Data/image/2021/06/14/lich-thi-dau-va-doi-hinh-doi-tuyen-y-euro-2021-3.jpg'),
            Image.network('https://vtv1.mediacdn.vn/thumb_w/650/2021/7/12/217046438101593196444902708838478788147417049n-16260476512521112750497-crop-1626047666685818602339.jpg')
          ],
        ),
      ),
    );
  }

  Widget buildListView() {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      itemCount: listShoes.length,
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        // return Text(listShoes[index].name);
        return Image.asset(listShoes[index].url);
      },
    );
  }

  Widget buildGridView() {
    return GridView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: listShoes.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4, crossAxisSpacing: 10, mainAxisSpacing: 10),
      itemBuilder: (context, index) {
        return Container(
          child: Image.asset(listShoes[index].url),
        );
      },
    );
  }
}
