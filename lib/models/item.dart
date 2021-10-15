class Item {
  static int SCAFFOLD = 1;
  static int TABBBAR = 2;
  static int BOTTOM = 3;
  static int FLOATING = 4;
  static int POPUP = 5;
  static int DROPDOWN = 6;
  static int CARD = 7;
  static int LISTTILE = 8;
  static int TEXT = 9;
  static int BUTTON = 10;
  static int CONTAINER = 11;
  static int ROWCOLUMN = 12;
  static int TEXTFIELD = 13;
  static int SIMPLEDIALOG = 14;
  static int ALERTDIALOG = 15;
  static int RADIO = 16;
  static int CHECKBOX = 17;
  static int LISTVIEW = 18;
  static int SLIVER = 19;
  static int IMAGE = 20;

  String content;
  int type;

  Item({
    required this.content,
    required this.type,
  });
}
