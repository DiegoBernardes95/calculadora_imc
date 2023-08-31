class Pessoa{
  String _nome = '';
  double _peso = 0.0;
  double _altura = 0.0;

  String getNome(){
    return _nome;
  }
  void setNome(String nome){
    _nome = nome;
  }

  double getPeso(){
    return _peso;
  }
  void setPeso(double peso){
    _peso = peso;
  }

  double getAltura(){
    return _altura;
  }
  void setAltura(double altura){
    _altura = altura;
  }
}