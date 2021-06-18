import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Card(
              child: ListTile(
                leading: Icon(Icons.monetization_on),
                title: Text("100.0"),
                subtitle: Text("1000"),
              ),
              color: Colors.amber,
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.monetization_on),
                title: Text("200.0"),
                subtitle: Text("1000"),
              ),
              color: Colors.amber,
            ),
          ],
        ),
      ),
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
