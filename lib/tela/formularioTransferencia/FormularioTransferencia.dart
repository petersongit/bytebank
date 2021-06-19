import 'package:flutter/material.dart';
import 'AppBarListaFormulario.dart';

class FormularioTransferencia extends StatelessWidget {
  const FormularioTransferencia({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarListaFormulario(),
      body: Container(
        padding: EdgeInsets.all(32),
        child: Column(
          children: [
            TextField(
              keyboardType: TextInputType.number,
              style: TextStyle(fontSize: 24),
              decoration: InputDecoration(
                  labelText: 'Número da conta', hintText: '0000'),
              maxLength: 4,
            ),
            TextField(
              keyboardType: TextInputType.number,
              style: TextStyle(fontSize: 24),
              decoration: InputDecoration(
                  labelText: 'Valor',
                  hintText: 'Valor',
                  icon: Icon(Icons.monetization_on)),
            ),
            Padding(
              padding: const EdgeInsets.all(24),
              child: Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.blue),
                  child: Text(
                    'Confirmar',
                    style: TextStyle(fontSize: 24),
                  ),
                  onPressed: () {},
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
