import 'package:calculadora_imc/utils/calculando_imc.dart';
import 'package:test/test.dart';

void main() {
  test('Verificação do nome', () {
    expect(CalculandoIMC.textoImc("", 25.69, "Saudável"), equals("O IMC de NOME_DESCONHECIDO é: 25.69. Saudável"));
  });
}
