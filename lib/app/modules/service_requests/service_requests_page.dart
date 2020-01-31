import 'package:flutter/material.dart';
import 'package:sc_components/app/modules/service_requests/table/service_requests_table_widget.dart';

class ServiceRequestsPage extends StatefulWidget {
  final String title;

  const ServiceRequestsPage({Key key, this.title = "ServiceRequests"}) : super(key: key);

  @override
  _ServiceRequestsPageState createState() => _ServiceRequestsPageState();
}

class _ServiceRequestsPageState extends State<ServiceRequestsPage> {
  List<Map<String, String>> rows = [
    {
      '_id': '01',
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
    {
      '_id': '02',
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
    {
      '_id': '03',
      'Data': '01/05/2020',
      'Horario': '16:30',
      'Protocolo': '86.0172.0511.2020',
      'Reclamante': 'Jonas Fonseca Silva',
      'Distancia': '16km',
      'Poste': '7854',
      'Endereco': 'Rua Grabriel Alvez Filho, 8452',
      'Bairro': 'Vila Sônia',
      'Status': 'Em andamento',
      'Progresso': '60%',
    },
    {
      '_id': '04',
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
    {
      '_id': '05',
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
    {
      '_id': '06',
      'Data': '01/05/2020',
      'Horario': '16:30',
      'Protocolo': '86.0172.0511.2020',
      'Reclamante': 'Jonas Fonseca Silva',
      'Distancia': '16km',
      'Poste': '7854',
      'Endereco': 'Rua Grabriel Alvez Filho, 8452',
      'Bairro': 'Vila Sônia',
      'Status': 'Em andamento',
      'Progresso': '60%',
    },
    {
      '_id': '07',
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
    {
      '_id': '08',
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
    {
      '_id': '09',
      'Data': '01/05/2020',
      'Horario': '16:30',
      'Protocolo': '86.0172.0511.2020',
      'Reclamante': 'Jonas Fonseca Silva',
      'Distancia': '16km',
      'Poste': '7854',
      'Endereco': 'Rua Grabriel Alvez Filho, 8452',
      'Bairro': 'Vila Sônia',
      'Status': 'Em andamento',
      'Progresso': '60%',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ServiceRequestsTableWidget(
        height: MediaQuery.of(context).size.height -100,
        items: this.rows,
        onChanged: (Map<String, String> selectedItem) {
          ///Variável onChanged
          print(selectedItem);
        },
        onSort:(Map<String, String> value){
          print(value['direction'] + ' ' + value['label']);
        }

      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/dropdown-example');
        },
      ),
    );
  }
}
