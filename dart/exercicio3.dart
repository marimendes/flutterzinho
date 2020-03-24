import 'dart:io';

main(){

  final pi = 3.1415;
  // Área da circufenrÊncia = PI * raio * raio
  stdout.write("Informe o raio: ");
  //funciona como um print
  var entradaDoUsuario = stdin.readLineSync();
  //funciona como um scanf
  final double raio = double.parse(entradaDoUsuario);
  // final = constante
  var area = pi * raio * raio;
  print("O valor digitado é: " + area.toString());

}