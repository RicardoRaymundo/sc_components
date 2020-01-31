import 'package:flutter/material.dart';

class TableItemExpanded extends StatefulWidget {
  String label;
  double maxWidth;
  double minWidth;
  double padding;

  TableItemExpanded({
    this.label,
    this.minWidth = 90,
    this.maxWidth = 100,
    this.padding = 10,
  });

  @override
  _TableItemExpandedState createState() => _TableItemExpandedState();
}

class _TableItemExpandedState extends State<TableItemExpanded> {


  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        padding: EdgeInsets.all(widget.padding),
        child: Text(widget.label),
      ),
    );
  }
}
