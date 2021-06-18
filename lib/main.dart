import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'ListaTransferencia.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Transfêrencias"),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.green,
      ),
      body: ListaTranferencia(),
      bottomNavigationBar: BottomAppBar(
        color: Colors.greenAccent,
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Row(
            children: [
              Text("Rodapé"),
            ],
          ),
        ),
      ),
    ),
  ));
}



