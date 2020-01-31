import 'package:draggable_scrollbar/draggable_scrollbar.dart';
import 'package:flutter/material.dart';
import 'package:sc_components/app/modules/service_requests/table/header/table_header.dart';
import 'package:sc_components/app/modules/service_requests/table/header/table_header_item.dart';
import 'package:sc_components/app/modules/service_requests/table/header/table_header_item_expanded.dart';
import 'package:sc_components/app/modules/service_requests/table/table_item.dart';
import 'package:sc_components/app/modules/service_requests/table/table_item_expanded.dart';
import 'package:sc_components/app/resources/hand_cursor.dart';

class ServiceRequestsTableWidget extends StatefulWidget {
  double height;
  List<Map<String, dynamic>> items;
  Function onChanged;
  Function onSort;

  ServiceRequestsTableWidget({this.items, this.onChanged, this.height, this.onSort});

  @override
  _ServiceRequestsTableWidgetState createState() => _ServiceRequestsTableWidgetState();
}

class _ServiceRequestsTableWidgetState extends State<ServiceRequestsTableWidget> {
  ScrollController myScrollController = ScrollController();

  Map<String, dynamic> selectedItem;
  int selectedIndex;
  static const double HEADER_HEIGHT = 80;


  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TableHeader(onSort: widget.onSort, itemMinWidth: 90),
        SizedBox(
          height: widget.height - HEADER_HEIGHT,
          child: DraggableScrollbar.arrows(
            backgroundColor: Colors.purple,
            alwaysVisibleScrollThumb: true,

            //labelTextBuilder: (double offset) => Text("${offset ~/ widget.items.length}"),
            controller: myScrollController,
            child: ListView.builder(
              controller: myScrollController,
              itemCount: widget.items.length,
              itemBuilder: (context, index) {
                return HandCursor(
                  child: Container(
                    color: (index % 2 == 0) ? Colors.black26 : Colors.transparent,
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          this.selectedItem = widget.items[index];
                          this.selectedIndex = index;
                          widget.onChanged(this.selectedItem);
                        });
                      },
                      child: Container(
                        constraints: BoxConstraints(minHeight: 40),
                        color: (this.selectedIndex == index) ? Colors.purple[100] : Colors.transparent,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            TableItem(label: widget.items[index]['Data'],),
                            TableItem(label: widget.items[index]['Horario'], color: Colors.yellow, minWidth: 80,),
                            TableItemExpanded(label: widget.items[index]['Protocolo']),
                            TableItemExpanded(label: widget.items[index]['Reclamante']),
                            TableItem(label: widget.items[index]['Distancia'],minWidth: 80, color: Colors.yellow),
                            TableItem(label: widget.items[index]['Poste'],minWidth: 85, color: Colors.deepOrange),
                            TableItemExpanded(label: widget.items[index]['Endereco'],),
                            TableItemExpanded(label: widget.items[index]['Bairro'],),
                            TableItemExpanded(label: widget.items[index]['Status'],),
                            TableItem(label: widget.items[index]['Progresso'],minWidth: 100, color: Colors.yellow),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}

class TableRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

/* MODO DE USO

* Lista que o widget recebe
List<dynamic> items = [
    {
      'Data': '01/11/2020',
      'Horario': '08:40',
      'Protocolo': '86.0174.0111.2020',
      'Reclamante': 'Maira Fonseca',
      'Distancia': '11km',
      'Poste': '5236',
      'Endereco': 'Rua Carlos de Campo, 7524',
      'Bairro': 'Jardim das Orquídeas',
      'Status': 'Aberta',
      'Progresso': '0%',
    },
    ];


 */
