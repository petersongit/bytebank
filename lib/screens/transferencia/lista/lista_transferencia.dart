import 'package:bytebank/components/appbar.dart';
import 'package:bytebank/models/transferencia.dart';
import 'package:bytebank/screens/transferencia/formulario/formulario_transferencia.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'item_transferencia.dart';

const String _tituloAppBar = 'Transfêrencias';

class ListaTransferencia extends StatefulWidget {
  //const ListaTransferencia({Key key}) : super(key: key);

  final List<Transferencia> _transferencias = [];

  @override
  _ListaTransferenciaState createState() {
    return _ListaTransferenciaState();
  }
}

class _ListaTransferenciaState extends State<ListaTransferencia> {
  @override
  Widget build(BuildContext context) {
    //widget._transferencias.add(Transferencia(10, 5));

    return Scaffold(
      appBar: AppBarCustom(_tituloAppBar),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: ListView.builder(
          itemCount: widget._transferencias.length,
          itemBuilder: (context, indice) =>
              ItemTransferencia(widget._transferencias[indice]),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.blue,
        onPressed: () {
          final Future future =
              Navigator.push(context, MaterialPageRoute(builder: (context) {
            return FormularioTransferencia();
          }));

          future.then((transferenciaRecebida) {
            _atualizar(transferenciaRecebida);
          });
        },
      ),
      bottomNavigationBar: null,
    );
  }

  void _atualizar(transferenciaRecebida) {
    if (transferenciaRecebida != null) {
      setState(() {
        widget._transferencias.add(Transferencia(
            transferenciaRecebida.conta, transferenciaRecebida.valor));
      });
      //setState(() => widget._transferencias.add(Transferencia(transferenciaRecebida.conta, transferenciaRecebida.valor)));
    }
  }
}
