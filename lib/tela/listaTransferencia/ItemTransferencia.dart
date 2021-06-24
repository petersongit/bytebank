import 'package:flutter/material.dart';

class ItemTransferencia extends StatelessWidget {
  final Transferencia _transferencia;

  ItemTransferencia(this._transferencia);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.monetization_on),
        title: Text(_transferencia.conta.toString()),
        subtitle: Text(_transferencia.valor.toString()),
      ),
    );
  }
}

class Transferencia {
  int conta;
  double valor;

  Transferencia(this.conta, this.valor);

  @override
  String toString() {
    return 'Trasnferencia{_conta: $conta, _valor: $valor}';
  }
}
