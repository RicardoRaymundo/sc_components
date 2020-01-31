import 'package:flutter/material.dart';
import 'package:sc_components/app/modules/service_requests/table/header/table_header_item.dart';
import 'package:sc_components/app/modules/service_requests/table/header/table_header_item_expanded.dart';

class TableHeader extends StatefulWidget {
  double height;
  double itemMinWidth;
  Function onSort;

  TableHeader({this.onSort, this.height, this.itemMinWidth});
  @override
  _TableHeaderState createState() => _TableHeaderState();
}

class _TableHeaderState extends State<TableHeader> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      color: Colors.red,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TableHeaderItem(onSort: widget.onSort, label: 'Data', minWidth: widget.itemMinWidth,),
          TableHeaderItem(onSort: widget.onSort, label: 'Horario', minWidth: widget.itemMinWidth,),
          TableHeaderItemExpanded(onSort: widget.onSort, label: 'Protocolo', minWidth: widget.itemMinWidth,),
          TableHeaderItemExpanded(onSort: widget.onSort, label: 'Reclamante', minWidth: widget.itemMinWidth,),
          TableHeaderItem(onSort: widget.onSort, label: 'Distancia', minWidth: widget.itemMinWidth,),
          TableHeaderItem(onSort: widget.onSort, label: 'Poste', minWidth: widget.itemMinWidth,),
          TableHeaderItemExpanded(onSort: widget.onSort, label: 'Endereco', minWidth: widget.itemMinWidth,),
          TableHeaderItemExpanded(onSort: widget.onSort, label: 'Bairro', minWidth: widget.itemMinWidth,),
          TableHeaderItemExpanded(onSort: widget.onSort, label: 'Status', minWidth: widget.itemMinWidth,),
          TableHeaderItem(onSort: widget.onSort, label: 'Progresso', minWidth: widget.itemMinWidth,),
        ],
      ),
    );
  }
}
