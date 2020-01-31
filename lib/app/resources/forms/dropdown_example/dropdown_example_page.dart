import 'package:flutter/material.dart';
import 'package:sc_components/app/resources/custom/custom_dropdown_button.dart';

class DropdownExamplePage extends StatefulWidget {
  final String title;

  const DropdownExamplePage({Key key, this.title = "DropdownExample"}) : super(key: key);

  @override
  _DropdownExamplePageState createState() => _DropdownExamplePageState();
}

class _DropdownExamplePageState extends State<DropdownExamplePage> {
  String nomeCidade = "";
  List<String> _cidades = ['Santos', 'Porto Alegre', 'Campinas', 'Rio de Janeiro'];
  var _itemSelecionado = 'Santos';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: criaDropDownButton(),
    );
  }

  criaDropDownButton() {
    return Container(
      child: Column(
        children: <Widget>[
          Text("Selecione a cidade"),
          TextField(
            onSubmitted: (String userInput) {
              setState(() {
                debugPrint('chamei setState');
                nomeCidade = userInput;
              });
            },
          ),
          DropdownButtonHideUnderline(
            child: Container(
              padding: EdgeInsets.only(left: 10),
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1.0, style: BorderStyle.solid),
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                ),
              ),
              child: SizedBox(
                height: 30,
                child: DropdownButton<String>(
                  items: this._cidades.map((String dropDownStringItem) {
                    return DropdownMenuItem<String>(
                      value: dropDownStringItem,
                      child: Text(dropDownStringItem),
                    );
                  }).toList(),
                  onChanged: (String novoItemSelecionado) {
                    _dropDownItemSelected(novoItemSelecionado);
                    setState(() {
                      this._itemSelecionado = novoItemSelecionado;
                    });
                  },
                  value: _itemSelecionado,
                ),
              ),
            ),
          ),
          CustomDropdownButton(
              items: this._cidades,
              selectedItem:  this._itemSelecionado,
              onChanged: (String selectedItem) {
                print('ON CHANGED !!!!!' + selectedItem);
                _dropDownItemSelected(selectedItem);
                setState(() {
                  this._itemSelecionado = selectedItem;
                });
              }),
          Text(
            "A cidade selecionada foi \n$_itemSelecionado",
            style: TextStyle(fontSize: 20.0),
          ),
        ],
      ),
    );
  }

  void _dropDownItemSelected(String novoItem) {
    setState(() {
      this._itemSelecionado = novoItem;
    });
  }
}
