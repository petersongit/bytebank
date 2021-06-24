import 'package:bytebank/tela/listaTransferencia/ListaTransferencia.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ByteBank());
}

class ByteBank extends StatelessWidget {
  const ByteBank({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: ListaTransferencia(),
      home: ListaTransferencia(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.green[900],
        accentColor: Colors.blue[700],
        buttonTheme: ButtonThemeData(
            buttonColor: Colors.green[700],
            textTheme: ButtonTextTheme.primary),
      ),
    );
  }
}
