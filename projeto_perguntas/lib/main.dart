import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';
main() {
  runApp(new PerguntaApp());
}

class _PerguntaAppState extends State<PerguntaApp> {

  var _perguntaSelecionada = 0;

  void _responder(){
    setState(() {
      _perguntaSelecionada++;
    });
    print(_perguntaSelecionada);
  }

   @override
  Widget build(BuildContext context){
    final List<Map<String, Object>> perguntas = [
      {
        'texto':'Qual é a sua cor favorita?',
        'respostas':['Preto','Vermelho','Rosa','Branco'],
      }, 
      {
        'texto':'Qual é o seu animal favorito?',
        'respostas':['Cachorro','Gato','Rato','Peixe'],
      }
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: <Widget>[
            Questao(perguntas[_perguntaSelecionada]['texto']),
            Resposta('Resposta 1', _responder),
            Resposta('Resposta 2', _responder),
            Resposta('Resposta 3', _responder),
          ],
        ),
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