import 'package:flutter/material.dart';

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