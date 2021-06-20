import 'package:flutter/material.dart';

class AppBarListaFormulario extends StatelessWidget implements PreferredSizeWidget {
  const AppBarListaFormulario({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text('Criando Tranferência'),
      backgroundColor: Colors.blue,
    );
  }

  @override
  Size get preferredSize =>Size.fromHeight(50);
}
