import 'package:bytebank/tela/formularioTransferencia/FormularioTransferencia.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'ItemTransferencia.dart';
import 'AppBarListaTransferencia.dart';

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
      appBar: AppBarListaTransferencia(),
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
            if (transferenciaRecebida != null) {
              setState(() {
                widget._transferencias.add(Transferencia(
                    transferenciaRecebida.conta, transferenciaRecebida.valor));
              });
              //setState(() => widget._transferencias.add(Transferencia(transferenciaRecebida.conta, transferenciaRecebida.valor)));
            }
          });
        },
      ),
      bottomNavigationBar: null,
    );
  }
}

/*class ListaTransferencia2 extends StatelessWidget {
  const ListaTransferencia2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Transferencia> _transferencias = [];

    _transferencias.add(Transferencia(10, 5));
    _transferencias.add(Transferencia(20, 50));
    _transferencias.add(Transferencia(30, 500));

    print('a' + _transferencias.toString());



    return Scaffold(
      appBar: AppBarListaTransferencia(),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: ListView.builder(
          itemCount: _transferencias.length,
          itemBuilder: (context, indice) =>
              ItemTransferencia(_transferencias[indice]),
        ),
      ),
      floatingActionButton: ListaTransferenciaFloatingActionButton(),
      bottomNavigationBar: RodapeListaTransferencia(),
    );
  }
}*/
