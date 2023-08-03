import 'dart:io';
import 'package:dart_imc/models/pessoa.dart';
import 'package:dart_imc/calcular_imc.dart';

void main() {
  Pessoa pessoa = Pessoa();

  try {
    print("Digite seu nome:");
    String? nome = stdin.readLineSync();
    pessoa.setNome(nome);

    print("Digite seu peso:");
    String? peso = stdin.readLineSync();
    if (peso != null) {
      pessoa.setPeso(double.tryParse(peso));
    }

    print("Digite sua altura:");
    String? altura = stdin.readLineSync();
    if (altura != null) {
      pessoa.setAltura(double.tryParse(altura));
    }
  } catch (e) {
    print(
        "Verifique se os dados de entrada estão corretos. \nMensagem técnica: $e");
    return;
  }

  print(
      "Olá ${pessoa.getNome()}, seu IMC é: ${calcularImc(pessoa.getPeso(), pessoa.getAltura())}");
}
