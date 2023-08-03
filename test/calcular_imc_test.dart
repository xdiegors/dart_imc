import 'package:dart_imc/calcular_imc.dart' as imc;
import 'package:test/test.dart';

void main() {
  test('IMC should be 21.60', () {
    expect(imc.calcularImc(70, 1.80), "21.60");
  });
}
