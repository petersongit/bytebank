import 'package:flutter/material.dart';
import 'AppBarListaFormulario.dart';
import '../listaTransferencia/ItemTransferencia.dart';

class FormularioTransferencia extends StatelessWidget {
  //const FormularioTransferencia({Key key}) : super(key: key);

  final TextEditingController _controllerConta = TextEditingController();
  final TextEditingController _controllerValor = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarListaFormulario(),
      body: Container(
        padding: EdgeInsets.all(32),
        child: Column(
          children: [
            TextBox(
                fontSize: 24,
                rotulo: 'Número da conta',
                dica: '0000',
                controlador: _controllerConta),
            TextBox(
                fontSize: 24,
                rotulo: 'Valor',
                dica: 'Valor',
                controlador: _controllerValor,
                icone: Icons.monetization_on),
            Padding(
              padding: const EdgeInsets.all(24),
              child: Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.blue),
                  child: Text(
                    'Confirmar',
                    style: TextStyle(fontSize: 24),
                  ),
                  onPressed: _realizarTransferencia,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _realizarTransferencia() {
    final int conta = int.tryParse(_controllerConta.text);
    final double valor = double.tryParse(_controllerValor.text);

    if (conta != null && valor != null) {
      Trasnferencia trasferebcia = Trasnferencia(conta, valor);
      print(trasferebcia.toString());
    }
  }
}

class TextBox extends StatelessWidget {
  //const TextBox({Key key}) : super(key: key);
  final double fontSize;
  final String rotulo;
  final String dica;
  final TextEditingController controlador;
  final IconData icone;

  TextBox(
      {this.fontSize, this.rotulo, this.dica, this.controlador, this.icone});

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.number,
      style: TextStyle(fontSize: fontSize),
      controller: controlador,
      decoration: InputDecoration(
          labelText: rotulo,
          hintText: dica,
          icon: icone != null ? Icon(icone) : null),
    );
  }
}
