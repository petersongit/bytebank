class Transferencia {
  int conta;
  double valor;

  Transferencia(this.conta, this.valor);

  @override
  String toString() {
    return 'Trasnferencia{_conta: $conta, _valor: $valor}';
  }
}