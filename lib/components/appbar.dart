import 'package:flutter/material.dart';

class AppBarCustom extends StatelessWidget implements PreferredSizeWidget {
//  const AppBarListaFormulario({Key key}) : super(key: key);

  final String _rotulo;

  AppBarCustom(this._rotulo);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(this._rotulo),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(50);
}
