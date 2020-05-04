import 'dart:io';

main(){

double nota = 6.99.roundToDouble();
print(nota);

String s1 = "Fulana de tal";
String s2 = s1.substring(0,8);
String s3 = s1.padRight(15, "!");
print(s2);
print(s3);

var s4 = "Fulana de tal".substring(0,8).toUpperCase().padRight(15, "!");
print(s4);
}