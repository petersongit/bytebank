import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'tela/formularioTransferencia/FormularioTransferencia.dart';


void main() {
  runApp(ByteBank());
}

class ByteBank extends StatelessWidget {
  const ByteBank({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: ListaTransferencia(),
      home: FormularioTransferencia(),
    );
  }
}
