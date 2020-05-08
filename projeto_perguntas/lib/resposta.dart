import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;
  final void Function() onPressed;

  Resposta(this.texto, this.onPressed);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 2,
      child: RaisedButton(
        color: Colors.pinkAccent,
        textColor: Colors.white,
        child: Text(texto),
        onPressed: onPressed,
        
      ),
    );
  }
}