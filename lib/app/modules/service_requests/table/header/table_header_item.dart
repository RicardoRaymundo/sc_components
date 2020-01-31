import 'package:flutter/material.dart';

class TableHeaderItem extends StatefulWidget {
  String label;
  double maxWidth;
  double minWidth;
  Function onSort;
  double padding;

  TableHeaderItem({
    this.onSort,
    this.label,
    this.minWidth = 40,
    this.maxWidth = 100,
    this.padding = 10,
  });

  @override
  _TableHeaderItemState createState() => _TableHeaderItemState();
}

class _TableHeaderItemState extends State<TableHeaderItem> {
  String direction = 'ASC';
  bool directionUp = false;
  bool hasSort = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          if (directionUp) {
            direction = 'ASC';
          } else {
            direction = 'DESC';
          }
          directionUp = !directionUp;
          hasSort = true;
          widget.onSort({'direction': direction, 'label': widget.label});
        });
      },
      child: Container(
        constraints: BoxConstraints(minWidth: widget.minWidth, maxWidth: widget.maxWidth),
        color: Colors.purple,
        child: Padding(
          padding: EdgeInsets.all(widget.padding),
          child: Wrap(
alignment: WrapAlignment.spaceBetween,
            direction: Axis.horizontal,
            children: <Widget>[
              Text(widget.label),
              //Spacer(),
              hasSort
                  ? Icon(
                      directionUp ? Icons.arrow_upward : Icons.arrow_downward,
                      color: Colors.black,
                      size: 16,
                    )
                  : SizedBox(
                      height: 16,
                      width: 16,
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
