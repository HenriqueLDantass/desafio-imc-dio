import 'dart:io';

import 'models/pessoal_model.dart';

void main() {
  try {
    print("Digite o nome da pessoa:");
    String nome = stdin.readLineSync()!;

    print("Digite o peso (kg):");
    double peso = double.parse(stdin.readLineSync()!.replaceAll(',', '.'));

    print("Digite a altura (m):");
    double altura = double.parse(stdin.readLineSync()!.replaceAll(',', '.'));

    Pessoa pessoa = Pessoa(altura, nome, peso);

    double imc = pessoa.calcularIMC();
    String interpretacao = pessoa.interpretarIMC();

    print("O IMC de ${pessoa.nome} é: $imc");
    print("Interpretação: $interpretacao");
  } catch (e) {
    print("Ocorreu algum erro!");
  }
}
