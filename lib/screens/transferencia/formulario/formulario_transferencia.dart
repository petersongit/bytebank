import 'package:bytebank/components/appbar.dart';
import 'package:flutter/material.dart';
import 'package:bytebank/components/textbox.dart';
import 'package:bytebank/models/transferencia.dart';

const String _rotuloCampoNumeroConta = 'Número da conta';
const String _dicaCampoNumeroConta = '0000';
const String _rotuloCampoValor = 'Valor';
const String _dicaCampoValor = '0.00';

const String _tituloAppBar = 'Criando Transferência';

class FormularioTransferencia extends StatelessWidget {
  //const FormularioTransferencia({Key key}) : super(key: key);

  final TextEditingController _controllerConta = TextEditingController();
  final TextEditingController _controllerValor = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustom(_tituloAppBar),
      body: Container(
        padding: EdgeInsets.all(32),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextBox(
                  fontSize: 24,
                  rotulo: _rotuloCampoNumeroConta,
                  dica: _dicaCampoNumeroConta,
                  controlador: _controllerConta),
              TextBox(
                  fontSize: 24,
                  rotulo: _rotuloCampoValor,
                  dica: _dicaCampoValor,
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
                    onPressed: () {
                      _realizarTransferencia(context);
                    }
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _realizarTransferencia(BuildContext context) {
    final int conta = int.tryParse(_controllerConta.text);
    final double valor = double.tryParse(_controllerValor.text);

    if (conta != null && valor != null) {
      Transferencia transferencia = Transferencia(conta, valor);
      print(transferencia.toString());
      Navigator.pop(context, transferencia);
    }
  }
}


