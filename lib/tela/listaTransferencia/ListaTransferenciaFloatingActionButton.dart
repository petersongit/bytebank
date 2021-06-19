import 'package:flutter/material.dart';

class ListaTransferenciaFloatingActionButton extends StatelessWidget {
  const ListaTransferenciaFloatingActionButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: Icon(Icons.add),
      backgroundColor: Colors.green,
    );
  }
}
