import 'package:flutter/material.dart';

import 'ItemTransferencia.dart';

class ListaTranferencia extends StatelessWidget {
  const ListaTranferencia({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(children: [
        ItemTransferencia(100.0, 1000),
        ItemTransferencia(200.0, 2000),
        ItemTransferencia(300.0, 3000),
        ItemTransferencia(400.0, 4000),
        ItemTransferencia(500.0, 5000),
        ItemTransferencia(600.0, 6000)
      ]),
    );
  }
}
