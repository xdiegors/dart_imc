import 'package:dart_imc/dart_imc.dart' as imc;
import 'package:test/test.dart';

void main() {
  test('IMC esperado', () {
    expect(imc.main(), 42);
  });
}
