import 'package:flutter/material.dart';

class TableItem extends StatefulWidget {
  String label;
  double maxWidth;
  double minWidth;
  double padding;
  Color color;

  TableItem({
    this.label,
    this.minWidth = 40,
    this.maxWidth = 100,
    this.padding = 10,
    this.color = Colors.transparent,
  });

  @override
  _TableItemState createState() => _TableItemState();
}

class _TableItemState extends State<TableItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(minWidth: widget.minWidth, maxWidth: widget.maxWidth),
      color: widget.color,
      child: Padding(
        padding: EdgeInsets.all(widget.padding),
        child: Text(widget.label, textAlign: TextAlign.center,),
      ),
    );
  }
}
