import 'dart:io';

soma(a, b){
  print(a+b);
}

class Produto {
  String nome;
  double preco;

  Produto(String nome, double preco) {
    this.nome = nome;
    this.preco = preco;
  }  
}

main(){
  soma(2,3);
  var p1 = Produto('Caneta', 4.99);
  var p2 = Produto('Geladeira', 1500.00);
  //p1.nome = 'lapis';
  //p1.preco = 4.50;
  print("O produto ${p1.nome} tem preço ${p1.preco}");
  print("O produto ${p2.nome} tem preço ${p2.preco}");
}