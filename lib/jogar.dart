import 'dart:math';

import 'package:cara_coroa_app/resultado.dart';
import 'package:flutter/material.dart';

class Jogar extends StatefulWidget {
  @override
  _JogarState createState() => _JogarState();
}

class _JogarState extends State<Jogar> {

  void _exibir_resultado(){

    var itens = ["cara","coroa"];
    var n = Random().nextInt(itens.length);
    var resultado = itens[n];

    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => Resultado(resultado)
        ));
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff61bd86),
      //backgroundColor: Color.fromRGBO(255, 255, 2555, 0.2),

      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset("images/logo.png"),
            GestureDetector(
              onTap: _exibir_resultado,
              child: Image.asset("images/botao_jogar.png"),
            )
          ],
        ),
      ),
    );
  }
}
