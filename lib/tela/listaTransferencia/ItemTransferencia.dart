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