import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:sc_components/app/resources/forms/claimant_data/claimant_data_controller.dart';
import 'package:sc_components/app/resources/forms/occurrence_details/occurrence_details.dart';

class ClaimantDataWidget extends StatefulWidget {
  @override
  _ClaimantDataWidgetState createState() => _ClaimantDataWidgetState();
}

class _ClaimantDataWidgetState extends State<ClaimantDataWidget> {
  ClaimantDataController claimantDataController = ClaimantDataController();

  //GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  FocusNode _node;

  //bool activeValidation = false;

  /// TESTE DE DROPDOWN BUTTON
  /*Map<String, String> vehicleOptions = {
    "Selec": "",
    "BA": "77",
    "SP": "11",
    "RJ ": "21",
    "ES": "27",
    "MG ": "31",
    "PR": "41",
  };*/
  //String ddd = '';
  //String dddType;

  //String origin = '';
  //String _originType;

  @override
  void initState() {
    super.initState();
    _node = FocusNode();
  }

  @override
  void dispose() {
    // Clean up the focus node when the Form is disposed.
    _node.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.4,
        child: Form(
          key: this.claimantDataController.formKey,
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(10),
                child: Container(
                  //height: MediaQuery.of(context).size.height * 0.09,
                  child: Center(
                    child: TextFormField(
                      onChanged: this.claimantDataController.changeClaimantName,
                      decoration: InputDecoration(
                        labelText: 'Nome do reclamante *',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Container(
                  //height: MediaQuery.of(context).size.height * 0.09,
                  child: TextFormField(
                    onChanged: this.claimantDataController.changeEmail,
                    decoration: InputDecoration(
                      labelText: 'E-mail *',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  children: <Widget>[
                    Flexible(
                      flex: 2,
                      child: Focus(
                        focusNode: _node,
                        onFocusChange: (bool focus) {
                          setState(() {});
                        },
                        child: Listener(
                          onPointerDown: (_) {
                            FocusScope.of(context).requestFocus(_node);
                          },
                          child: Observer(
                            builder: (_) => DropdownButtonFormField<String>(
                              items: this
                                  .claimantDataController
                                  .dddOptions
                                  .map((description, value) {
                                    return MapEntry(
                                        description,
                                        DropdownMenuItem<String>(
                                          value: value,
                                          child: Text(description),
                                        ));
                                  })
                                  .values
                                  .toList(),
                              value: this.claimantDataController.dddType,
                              decoration: InputDecoration(
                                labelText: 'DDD *',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                              /*validator: (String value) {
                              if (ddd.isEmpty) {
                                return 'SELECT_A_VEHICLE_TYPE';
                              }
                              return null;
                            },*/
                              onChanged: this.claimantDataController.updateDDD,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 3,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: TextFormField(
                          onChanged: this.claimantDataController.changeTelephone,
                          decoration: InputDecoration(
                            labelText: 'Telefone *',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 4,
                      child: Focus(
                        focusNode: _node,
                        onFocusChange: (bool focus) {
                          setState(() {});
                        },
                        child: Listener(
                          onPointerDown: (_) {
                            FocusScope.of(context).requestFocus(_node);
                          },
                          child: Observer(
                            builder: (_) => DropdownButtonFormField<String>(
                              items: this
                                  .claimantDataController
                                  .originOptions
                                  .map((description, value) {
                                    return MapEntry(
                                        description,
                                        DropdownMenuItem<String>(
                                          value: value,
                                          child: Text(description),
                                        ));
                                  })
                                  .values
                                  .toList(),
                              value: this.claimantDataController.originType,
                              decoration: InputDecoration(
                                labelText: 'Origem *',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                              /*validator: (String value) {
                                if (this.claimantDataController.origin.isEmpty) {
                                  return 'SELECT_A_VEHICLE_TYPE';
                                }
                                return null;
                              },*/
                              onChanged: this.claimantDataController.updateOrigin,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Observer(
                builder: (_) => Container(
                  child: Text('Name: ' +
                      this.claimantDataController.claimantName +
                      ', Email : ' +
                      this.claimantDataController.email +
                      ', Phone number : ' +
                      this.claimantDataController.ddd +
                      this.claimantDataController.telephone +
                      '. From:' +
                      this.claimantDataController.origin),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
