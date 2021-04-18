import 'package:flutter_web_portfoilio/utils/const_string.dart';

class MenuItem {
  String text;
  bool isSelected;

  MenuItem({this.text, this.isSelected});
}

class MenuList {
  List<MenuItem> items;

  MenuList() {
    List<MenuItem> menuItems = [
      MenuItem(text: ConstString.menuHome, isSelected: false),
      MenuItem(text: ConstString.menuAbout, isSelected: false),
      MenuItem(text: ConstString.menuPortfolio, isSelected: false),
      MenuItem(text: ConstString.menuContact, isSelected: false)
    ];
    items = menuItems;
    selectedIndex(0);
  }

  void selectedIndex(int index) {
    if (items != null && index < items.length) {
      for (int i = 0; i < items.length; i++) {
        items[i].isSelected = false;
        if (i == index) {
          items[i].isSelected = true;
        }
      }
    }
  }
}
