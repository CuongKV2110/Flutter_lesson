import 'package:flutter/material.dart';
import 'package:flutter_lesson/models/item.dart';

class ItemDetailScreen extends StatefulWidget {
  final Item item;

  ItemDetailScreen(this.item);

  @override
  State<StatefulWidget> createState() {
    return _ItemDetailState();
  }
}

class _ItemDetailState extends State<ItemDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.item.content),
      ),
      body: Center(),
    );
  }
}
