import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';
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
    List <Widget> respostas = temPerguntaSelecionada
    ? _perguntas[_perguntaSelecionada]['respostas']
    : null;

    for (String textoResp in _perguntas[_perguntaSelecionada]['respostas']){
      respostas.add(Resposta(textoResp, _responder));
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: temPerguntaSelecionada ? Column(
          children: <Widget>[
            Questao(_perguntas[_perguntaSelecionada]['texto']),
            ...respostas,
          ],
        ): null,
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