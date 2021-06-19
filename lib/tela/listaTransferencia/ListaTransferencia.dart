import 'package:flutter/material.dart';

import 'ItemTransferencia.dart';
import 'AppBarListaTransferencia.dart';
import 'ListaTransferenciaFloatingActionButton.dart';
import 'RodapeListaTransferencia.dart';

class ListaTransferencia extends StatelessWidget {
  const ListaTransferencia({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarListaTransferencia(),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(children: [
          ItemTransferencia(100.0, 1000),
          ItemTransferencia(200.0, 2000),
          ItemTransferencia(300.0, 3000),
          ItemTransferencia(400.0, 4000),
          ItemTransferencia(500.0, 5000),
          ItemTransferencia(600.0, 6000)
        ]),
      ),
      floatingActionButton: ListaTransferenciaFloatingActionButton(),
      bottomNavigationBar: RodapeListaTransferencia(),
    );
  }
}
