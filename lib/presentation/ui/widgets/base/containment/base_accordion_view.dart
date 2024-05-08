import 'package:flutter/material.dart';

class BaseAccordionView {
  static basic({
    List<Widget> children = const <Widget>[],
    Widget? title,
    String label = "",
  }) {
    return ExpansionTile(
      shape: const Border(),
      title: Text(
        label,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          overflow: TextOverflow.ellipsis,
        ),
        maxLines: 1,
      ),
      iconColor: Colors.black,
      textColor: Colors.black,
      collapsedTextColor: Colors.black,
      collapsedIconColor: Colors.black,
      childrenPadding: const EdgeInsets.only(
        left: 16,
        right: 16,
      ),
      expandedCrossAxisAlignment: CrossAxisAlignment.stretch,
      children: children,
    );
  }
}
