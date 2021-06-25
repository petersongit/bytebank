import 'package:flutter/material.dart';

class Rodape extends StatelessWidget
    implements PreferredSizeWidget {
  //const Rodape({Key key}) : super(key: key);

  final double _padding;
  final String _rotulo;
  final Color _cor;

  Rodape(this._padding, this._rotulo, this._cor);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: this._cor,
      child: Padding(
        padding: EdgeInsets.all(this._padding),
        child: Row(
          children: [
            Text(this._rotulo),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(100);
}
