import 'package:flutter/material.dart';
import 'package:dropdown_search/dropdown_search.dart';

class DropDownSearchO extends StatefulWidget {
  const DropDownSearchO({Key key}) : super(key: key);

  @override
  _DropDownSearchOState createState() => _DropDownSearchOState();
}

class _DropDownSearchOState extends State<DropDownSearchO> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        DropdownSearch<String>(
          mode: Mode.BOTTOM_SHEET,
          showSelectedItems: true,
          showSearchBox: true,
          items: ["Brazil", "Italy (Disabled)", "Tunisia"],
          label: "Menu Mode",
          hint: "Country in menu mode",
          popupItemDisabled: (String s) => s.startsWith('I'),
          onChanged: (val) {
            print(val);
          },
          selectedItem: "Brazil",
        ),
      ],
    ));
  }
}
