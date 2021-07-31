import 'package:flutter/material.dart';

class ColumnO extends Column {
  List<Widget> widgets;
  ColumnO(List<Widget> widgets) {
    this.widgets = widgets;
  }
  void addWidget(Widget widget) {
    widgets.add(widget);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: widgets,
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
    );
  }
}
