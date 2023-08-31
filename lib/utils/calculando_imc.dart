import 'dart:convert';
import 'dart:io';

class CalculandoIMC {
  static String lerDados() {
    return stdin.readLineSync(encoding: utf8) ?? '';
  }

  static String addNome(String texto) {
    print(texto);
    return lerDados();
  }

  static double? addPesoOuAltura(String texto) {
    print(texto);
    var value = lerDados();
    try {
      return double.parse(value);
    } catch (e) {
      return null;
    }
  }

  static String textoImc(String nome, double? imc, String textoImc) {
    if(nome.trim() == ''){
      nome = 'NOME_DESCONHECIDO';
    }
    return 'O IMC de $nome é: $imc. $textoImc';
  }

  static void resultadoIMC(String nome, double peso, double altura) {
    double contaImc = peso / (altura * altura);
    String imcFormatado = contaImc.toStringAsFixed(2);
    double imc = double.parse(imcFormatado);

    if (imc < 16) {
      print(textoImc(nome, imc, "Possui magreza grave!"));
    } else if (imc >= 16 && imc < 17) {
      print(textoImc(nome, imc, "Possui magreza moderada!"));
    } else if (imc >= 17 && imc < 18.5) {
      print(textoImc(nome, imc, "Possui magreza leve!"));
    } else if (imc >= 18.5 && imc < 25) {
      print(textoImc(nome, imc, "Saudável"));
    } else if (imc >= 25 && imc < 30) {
      print(textoImc(nome, imc, "Possui sobrepeso!"));
    } else if (imc >= 30 && imc < 35) {
      print(textoImc(nome, imc, "Possui obesidade grau I"));
    } else if (imc >= 35 && imc < 40) {
      print(textoImc(nome, imc, "Possui obesidade grau II (severa)"));
    } else if (imc >= 40) {
      print(textoImc(nome, imc, "Possui obesidade grau III (mórbida)"));
    }
  }
}
