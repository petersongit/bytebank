import 'package:flutter/material.dart';

class RodapeListaTransferencia extends StatelessWidget
    implements PreferredSizeWidget {
  const RodapeListaTransferencia({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.green,
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Row(
          children: [
            Text("Rodapé"),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(100);
}
