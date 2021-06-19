import 'package:flutter/material.dart';

class ItemTransferencia extends StatelessWidget {
  final double _valor;
  final double _conta;

  ItemTransferencia(this._valor, this._conta);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.monetization_on),
        title: Text(_valor.toString()),
        subtitle: Text(_conta.toString()),
      ),
    );
  }
}

class Trasnferencia{
  final int _conta;
  final double _valor;


  Trasnferencia(this._conta, this._valor);

  @override
  String toString() {
    return 'Trasnferencia{_conta: $_conta, _valor: $_valor}';
  }
}