import 'package:flutter/material.dart';

class Resultado extends StatefulWidget {

  String valor;

  Resultado(this.valor);

  @override
  _ResultadoState createState() => _ResultadoState();
}

class _ResultadoState extends State<Resultado> {

  void _voltar(){
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {

    var caminhoImagem;
    if(widget.valor == "cara"){
      caminhoImagem = "images/moeda_cara.png";
    }else{
      caminhoImagem ="images/moeda_coroa.png";
    }

    return Scaffold(
      backgroundColor: Color(0xff61bd86),
      //backgroundColor: Color.fromRGBO(255, 255, 2555, 0.2),

      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset("images/moeda_cara.png"),
            GestureDetector(
              onTap: _voltar,
              child: Image.asset(caminhoImagem),
            )
          ],
        ),
      ),
    );
  }
}
