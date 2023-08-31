import 'package:calculadora_imc/classe/pessoa.dart';
import 'package:calculadora_imc/utils/calculando_imc.dart';

void main(List<String> arguments) {
  var pessoa = Pessoa();

  print("Seja bem-vindo a Calculadora de IMC!");

  pessoa.setNome(CalculandoIMC.addNome("Informe o seu nome:"));

  double? peso;
  peso = CalculandoIMC.addPesoOuAltura("Informe o seu peso:");
  if (peso != null) {
    pessoa.setPeso(peso);
  }

  double? altura;
  altura = CalculandoIMC.addPesoOuAltura("Informe a sua altura:");
  if (altura != null) {
    pessoa.setAltura(altura);
  }

  print('-------------------- RESULTADO --------------------\n');

  String returnError = pessoa.getNome().trim() == '' ? 'NOME_DESCONHECIDO' : pessoa.getNome();

  if (pessoa.getAltura() != 0.0 && pessoa.getPeso() != 0.0) {
    print('Peso informado: ${pessoa.getPeso()}');
    print('Altura informada: ${pessoa.getAltura()}');
    CalculandoIMC.resultadoIMC(
        pessoa.getNome(), pessoa.getPeso(), pessoa.getAltura());
  } else {
    print('ATENÇÃO $returnError: Peso e altura não foram informados corretamente!');
  }

  print('\n---------------------------------------------------');
}
