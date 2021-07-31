import 'package:flutter/material.dart';

class ExpandedO extends Expanded {
  Widget widget;
  ExpandedO(Widget widget) {
    this.widget = widget;
  }
  Widget build(BuildContext context) {
    return Expanded(flex: 2, child: widget);
  }
}
