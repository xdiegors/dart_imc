import 'dart:io';
import 'package:dart_imc/models/pessoa.dart';

void main(List<String> arguments) {
  Pessoa pessoa = Pessoa();

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
  double imc;

  double calcularImc(double? peso, double? altura) {
    imc = pessoa.getPeso() / (pessoa.getAltura() * pessoa.getAltura());
    return imc;
  }

  print(
      "${pessoa.getNome()} seu IMC é: ${calcularImc(pessoa.getPeso(), pessoa.getAltura())}");
}
