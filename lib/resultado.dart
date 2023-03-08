import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacaoTotal;
  final void Function() quandoReiniciarQuestionario;

  Resultado(
      this.pontuacaoTotal,
      this.quandoReiniciarQuestionario
      );

  String get frasePontuacao {
    if(pontuacaoTotal < 8){
      return 'Parabéns!';
    } else if(pontuacaoTotal < 12){
      return 'Voce é bom!';
    } else if(pontuacaoTotal < 16){
      return 'Impressionante!';
    } else {
      return 'Nivel Jedi!';
    }
  }
  @override
  Widget build(BuildContext context){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Center(
          child: Text(
            frasePontuacao,
            style: TextStyle(fontSize: 28),
          ),
        ),
        TextButton(
            onPressed: quandoReiniciarQuestionario,
            child: Text(
              'Reiniciar?',
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.blue),
            )
        )
      ],
    );
  }
}