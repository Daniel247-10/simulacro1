class CuentaBancaria {
  String titular;
  String numeroCuenta;
  double saldo;

  CuentaBancaria(this.titular, this.numeroCuenta, this.saldo);

  void depositar(double monto) {
    saldo += monto;
    print('Depósito exitoso. Nuevo saldo: \$${saldo.toStringAsFixed(2)}');
  }

  void retirar(double monto) {
    if (monto <= saldo) {
      saldo -= monto;
      print('Retiro exitoso. Nuevo saldo: \$${saldo.toStringAsFixed(2)}');
    } else {
      print(
        'Error: Fondos insuficientes para retirar \$${monto.toStringAsFixed(2)}.',
      );
    }
  }

  void mostrarEstado() {
    print('Estado de la Cuenta');
    print('Titular: $titular');
    print('Número de Cuenta: $numeroCuenta');
    print('Saldo: \$${saldo.toStringAsFixed(2)}');
  }
}

class CuentaEmpresarial extends CuentaBancaria {
  double limiteCredito;

  CuentaEmpresarial(
    String titular,
    String numeroCuenta,
    double saldo,
    this.limiteCredito,
  ) : super(titular, numeroCuenta, saldo);

  void solicitarCredito(double monto) {
    if (monto <= limiteCredito) {
      saldo += monto;
      print(
        'Crédito Aprobado: Se añadieron \$${monto.toStringAsFixed(2)} a la cuenta.',
      );
    } else {
      print(
        'Crédito Rechazado: El monto solicitado excede el límite de crédito disponible.',
      );
    }
  }
}

void main() {
  // d) Operaciones Cuenta Bancaria
  print('d) Operaciones Cuenta Bancaria');
  CuentaBancaria cuentaComun = CuentaBancaria('Juan Pérez', '123456789', 300.0);

  cuentaComun.depositar(150.0);
  cuentaComun.retirar(100.0);
  cuentaComun.retirar(500.0);

  print('');

  // e) Operaciones Cuenta Empresarial
  print('e) Operaciones Cuenta Empresarial');
  CuentaEmpresarial cuentaEmpresa = CuentaEmpresarial(
    'Tech Solutions S.R.L.',
    '987654321',
    1000.0,
    5000.0,
  );

  cuentaEmpresa.mostrarEstado();

  cuentaEmpresa.solicitarCredito(2500.0);
  cuentaEmpresa.solicitarCredito(6000.0);
}
