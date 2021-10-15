import 'package:flutter/material.dart';
import 'package:flutter_lesson/models/item.dart';

import 'item_detail.dart';
import 'my_alert_dialog.dart';
import 'my_bottom_navigation.dart';
import 'my_button.dart';
import 'my_card.dart';
import 'my_checkbox.dart';
import 'my_container.dart';
import 'my_dropdown.dart';
import 'my_floating_action.dart';
import 'my_image.dart';
import 'my_listtile.dart';
import 'my_listview.dart';
import 'my_popup_menu.dart';
import 'my_radio_button.dart';
import 'my_row_column.dart';
import 'my_scaffold.dart';
import 'my_simple_dialog.dart';
import 'my_sliver_list.dart';
import 'my_tabbar.dart';
import 'my_text.dart';
import 'my_textfield.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  List<Item> listData = [];

  @override
  void initState() {
    super.initState();
    initData();
  }

  void initData() {
    listData.add(Item(content: "SCAFFOLD", type: Item.SCAFFOLD));
    listData.add(Item(content: "TAB BAR", type: Item.TABBBAR));
    listData.add(Item(content: "BOTTOM NAVIGATION", type: Item.BOTTOM));
    listData.add(Item(content: "FLOATING ACTION BUTTON", type: Item.FLOATING));
    listData.add(Item(content: "POPUP MENU BUTTON", type: Item.POPUP));
    listData.add(Item(content: "DROPDOWN", type: Item.DROPDOWN));
    listData.add(Item(content: "CARD", type: Item.CARD));
    listData.add(Item(content: "LIST TILE", type: Item.LISTTILE));
    listData.add(Item(content: "TEXT", type: Item.TEXT));
    listData.add(Item(content: "BUTTON", type: Item.BUTTON));
    listData.add(Item(content: "CONTAINER", type: Item.CONTAINER));
    listData.add(Item(content: "ROW COLUMN", type: Item.ROWCOLUMN));
    listData.add(Item(content: "TEXT FIELD", type: Item.TEXTFIELD));
    listData.add(Item(content: "SIMPLE DIALOG", type: Item.SIMPLEDIALOG));
    listData.add(Item(content: "ALERT DIALOG", type: Item.ALERTDIALOG));
    listData.add(Item(content: "RADIO BUTTON", type: Item.RADIO));
    listData.add(Item(content: "CHECKBOX", type: Item.CHECKBOX));
    listData.add(Item(content: "LIST VIEW", type: Item.LISTVIEW));
    listData.add(Item(content: "SLIVER LIST", type: Item.SLIVER));
    listData.add(Item(content: "IMAGE", type: Item.IMAGE));
  }

  void _openDetailItem(Item item) {
    Navigator.of(context).push(
      new MaterialPageRoute(
        builder: (context) {
          if (item.type == Item.SCAFFOLD) {
            return MyScaffoldScreen(item);
          }
          if (item.type == Item.TABBBAR) {
            return MyTabbarScreen(item);
          }
          if (item.type == Item.BOTTOM) {
            return MyBottomScreen(item);
          }
          if (item.type == Item.FLOATING) {
            return MyFloatingScreen(item);
          }
          if (item.type == Item.POPUP) {
            return MyPopupScreen(item);
          }
          if (item.type == Item.DROPDOWN) {
            return MyDropdownScreen(item);
          }
          if (item.type == Item.TEXT) {
            return MyTextScreen(item);
          }
          if (item.type == Item.BUTTON) {
            return MyButtonScreen(item);
          }
          if (item.type == Item.CONTAINER) {
            return MyContainerScreen(item);
          }
          if (item.type == Item.ROWCOLUMN) {
            return MyRowColumnScreen(item);
          }
          if (item.type == Item.TEXTFIELD) {
            return MyTextFieldScreen(item);
          }
          if (item.type == Item.ALERTDIALOG) {
            return MyAlerDialogScreen(item);
          }
          if (item.type == Item.SIMPLEDIALOG) {
            return MySimpleDialogScreen(item);
          }
          if (item.type == Item.CARD) {
            return MyCardScreen(item);
          }
          if (item.type == Item.LISTTILE) {
            return MyListTileScreen(item);
          }
          if (item.type == Item.CHECKBOX) {
            return MyCheckBoxScreen(item);
          }
          if (item.type == Item.RADIO) {
            return MyRadioScreen(item);
          }
          if (item.type == Item.LISTVIEW) {
            return MyListViewScreen(item);
          }
          if (item.type == Item.SLIVER) {
            return MySLiverScreen(item);
          }
          if (item.type == Item.IMAGE) {
            return MyImageScreen(item);
          }

          return ItemDetailScreen(item);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return ListView.builder(
      itemCount: listData.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          behavior: HitTestBehavior.opaque,
          child: _buildLesson(context, index),
          onTap: () {
            _openDetailItem(listData[index]);
          },
        );
      },
    );
  }

  Widget _buildLesson(context, index) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.white,
          child: ClipOval(
            child: Image.network(
                'https://e7.pngegg.com/pngimages/24/124/png-clipart-android-application-software-mobile-app-development-android-free-grass-cartoon.png'),
          ),
        ),
        title: Text(
          listData[index].content,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
      color: Colors.lightGreenAccent,
      shape: RoundedRectangleBorder(
          side: BorderSide(width: 2, color: Colors.black),
          borderRadius: BorderRadius.circular(10)),
    );
  }
}
