import 'dart:io';

main(){
  int n1 = 3;
  double n2 = 5.69;
  double n3 = double.parse("12.765");
  num n4 = 6;
  // não importa se é double ou int
  print(n1 + n2  + n3);
  // resultado converdido pra double
  String s1 = "bom";
  String s2 = " dia";
  // concatena as strings
  print(s1 + s2 + "!!");
  List aprovados = ['Ana', 'Carlos', 'Daniel', 'Rafael'];
  print(aprovados.elementAt(1));
  // lista vai de 0 a x
  print(aprovados[0]);
  print(aprovados.length);
  // tamanho da lista
  Map<String, String> telefones = {
    'Joao': '+55 (61) 12345-1212',  
    'Maria': '+55 (61) 12345-1212',  
  };
  print(telefones);
  print(telefones['Joao']);
  print(telefones.length);
  print(telefones.values);
  print(telefones.keys);

  Set times = {'Vasco', 'Flamengo', 'Botafogo'};
  // nao aceita repeticao, a lista aceita
  // nesse caso como todos os elementos sao string, ele n aceita numeros
  print(times);
  times.add('Palmeiras');
  print(times.length);
  print(times.first);

}