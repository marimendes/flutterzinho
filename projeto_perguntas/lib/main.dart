import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';
import 'resultado.dart';
main() {
  runApp(new PerguntaApp());
}

class _PerguntaAppState extends State<PerguntaApp> {

  var _perguntaSelecionada = 0;
  final List<Map<String, Object>> _perguntas = [
      {
        'texto':'Qual é a sua cor favorita?',
        'respostas':['Preto','Vermelho','Rosa','Branco'],
      }, 
      {
        'texto':'Qual é o seu animal favorito?',
        'respostas':['Cachorro','Gato','Rato','Peixe'],
      }
    ];

  void _responder(){
    setState(() {
      _perguntaSelecionada++;
    });
    print(_perguntaSelecionada);
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context){
    List <String> respostas = temPerguntaSelecionada
    ? _perguntas[_perguntaSelecionada]['respostas']
    : null;

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: temPerguntaSelecionada 
        ? Column (
          children: <Widget>[
            Questao(_perguntas[_perguntaSelecionada]['texto']),
            ...respostas.map((t) => Resposta(t,_responder)).toList(),
          ],
        ): Resultado(),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget{

  @override
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}