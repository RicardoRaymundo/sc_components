import 'package:flutter/material.dart';

class CustomDropdownButton extends StatelessWidget {
  List<String> items;
  Function onChanged;
  String selectedItem;


  CustomDropdownButton({Key key, this.items, this.onChanged, this.selectedItem}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1.0, style: BorderStyle.solid),
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
        ),
      ),
      child: SizedBox(
        height: 30,
        child: DropdownButtonHideUnderline(
          child: DropdownButton<String>(
            items: this.items.map((String dropDownStringItem) {
              return DropdownMenuItem<String>(
                value: dropDownStringItem,
                child: Text(dropDownStringItem),
              );
            }).toList(),
            onChanged: this.onChanged,
            value: this.selectedItem,
          ),
        ),
      ),
    );
  }
}
