import 'dart:io';

main(){

  //var listaCoisas = ['banana', true, 123, 4.56]; -  tipos diferentes
  List<String> frutas = ['banana', 'laranja', 'maça'];
  //frutas.add(123); - nao aceita numero
  frutas.add('pera');
  print(frutas);

  Map<String, double> salarios = {
    'gerente': 19345.78,
    'vendedor': 16345.80,
    'estagiario': 10345.00,
  };

}