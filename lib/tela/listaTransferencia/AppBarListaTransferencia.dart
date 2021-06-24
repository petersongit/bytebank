import 'package:flutter/material.dart';

class AppBarListaTransferencia extends StatelessWidget
    implements PreferredSizeWidget {
  const AppBarListaTransferencia({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text("Transfêrencias"),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(50);
}
