import 'package:bytebank/tela/formularioTransferencia/FormularioTransferencia.dart';
import 'package:bytebank/tela/listaTransferencia/ItemTransferencia.dart';
import 'package:flutter/material.dart';


class ListaTransferenciaFloatingActionButton extends StatelessWidget {
  const ListaTransferenciaFloatingActionButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: Icon(Icons.add),
      backgroundColor: Colors.green,
      onPressed: () {
        final Future<Transferencia> future = Navigator.push(context, MaterialPageRoute(builder: (context) {
          return FormularioTransferencia();
        }));

        future.then((transferencia) => print('Future: ' + transferencia.toString()));


      },
    );
  }
}
