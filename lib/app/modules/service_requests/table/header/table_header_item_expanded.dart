import 'package:flutter/material.dart';

class TableHeaderItemExpanded extends StatefulWidget {
  String label;
  double maxWidth;
  double minWidth;
  Function onSort;
  double padding;

  TableHeaderItemExpanded({
    this.onSort,
    this.label,
    this.minWidth = 90,
    this.maxWidth = 100,
    this.padding = 10,
  });

  @override
  _TableHeaderItemExpandedState createState() => _TableHeaderItemExpandedState();
}

class _TableHeaderItemExpandedState extends State<TableHeaderItemExpanded> {
  String direction = 'ASC';
  bool directionUp = false;
  bool hasSort = false;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: GestureDetector(
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
          padding: EdgeInsets.all(10),
          child: Wrap(
            direction: Axis.horizontal,
            children: <Widget>[
              Text(widget.label),
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
/*
Expanded(
      flex: 1,
      child: GestureDetector(
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
          color: Colors.blue,
          child: Padding(
            padding: EdgeInsets.all(widget.padding),
            child: Row(
              children: <Widget>[
                Text(widget.label),
                Spacer(),
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
      ),
    )
 */
