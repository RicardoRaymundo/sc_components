import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class OccurrenceDetails extends StatefulWidget {
  List<Map<String, dynamic>> items;
  Function onChanged;
  List<String> selectedItems;

  OccurrenceDetails({this.items, this.onChanged, this.selectedItems});

  @override
  _OccurrenceDetailsState createState() => _OccurrenceDetailsState();
}

class _OccurrenceDetailsState extends State<OccurrenceDetails> {
  @override
  void initState() {
    super.initState();
    initSelectedItems();
  }

  initSelectedItems() {
    widget.items.forEach((item) {
      widget.selectedItems.forEach((value) {
        if(item["value"] == value) {
          item["isChecked"] = true;
        }
      });
    });
  }

  /// Atualiza a lista de itens selecionados
  updateSelectedItems() {
    widget.selectedItems = [];
    this.widget.items.forEach((item) {
      if (item["isChecked"]) {
        widget.selectedItems.add(item["value"]);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: widget.items.length,
        itemBuilder: (context, index) {
          return SizedBox(
            height: 40,
            child: CheckboxListTile(
              controlAffinity: ListTileControlAffinity.leading,
              title: Text(widget.items.elementAt(index)['label']),
              value: widget.items.elementAt(index)['isChecked'],
              onChanged: (bool value) {
                setState(() {
                  widget.items.elementAt(index)['isChecked'] = value;
                  updateSelectedItems();
                  widget.onChanged(widget.selectedItems);
                });
              },
            ),
          );
        },
      ),
    );
  }
}

/* MODO DE USO

* Variável item
List<Map<String, dynamic>> occurrenceTypes = [
    {"label": '1 Lâmpada apagada a noite', "value": "1_LAMPADA_APAGADA_NOITE", "isChecked": false},
    {
      "label": '2 ou mais lâmpadas apagadas durante a noite',
      "value": "2_MAIS_LAMPADA_APAGADA_NOITE",
      "isChecked": false
    },
    {"label": '1 Lâmpada acesa durante o dia', "value": "1_LAMPADA_ACESA_DIA", "isChecked": false},
    {"label": '2 ou mais lâmpadas acessas durante o dia', "value": "2_MAIS_LAMPADA_ACESA_DIA", "isChecked": false},
    {"label": 'Braço danificado', "value": "BRACO_DANIFICADO", "isChecked": false},
    {"label": 'Cabo ou fio partido na via', "value": "CABO_PARTIDO_NA_VIA", "isChecked": false},
    {"label": 'Lâmpada apaga e acende', "value": "LAMPADA_APAGA_E_ACENDE", "isChecked": false},
    {"label": 'Luminária danificada', "value": "LUMINARIA_DANIFICADA", "isChecked": false},
    {"label": 'Luminosidade ruim', "value": "LUMINOSIDADE_RUIM", "isChecked": false},
    {"label": 'Poste Danificado', "value": "POSTE_DANIFICADO", "isChecked": false},
  ];

* Variável selectedItems
  List<String> selectedItems = [
    '1_LAMPADA_ACESA_DIA',
    'BRACO_DANIFICADO',
    'LAMPADA_APAGA_E_ACENDE',
    'LUMINOSIDADE_RUIM',
  ];

* Widget:
OccurrenceDetails(
        items: this.occurrenceTypes,
        onChanged: (List<String> selectedItems) { ///Variável onChanged
          print(selectedItems);
        },
        selectedItems: selectedItems,
      ),
*/
