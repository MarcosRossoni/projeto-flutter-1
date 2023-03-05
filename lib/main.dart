
import 'package:flutter/material.dart';
import 'package:teste/questao.dart';
import 'package:teste/resposta.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp>{
  int _pergundaSelecionada = 0;

  final _perguntas = const [
    {
      'texto': 'Qual é a sua cor favorita?',
      'respostas': ['Preto', 'Vermelho', 'Verde', 'Branco']
    },
    {
      'texto': 'Qual o seu animal favorito?',
      'respostas': ['Coelho', 'Cobra', 'Elefante', 'Leão']
    },
    {
      'texto': 'Qual o seu instrutor favorito?',
      'respostas': ['Maria', 'João', 'Leo', 'Pedro']
    }
  ];

  void _responder() {
    if(temPerguntaSelecionada){
      setState(() {
        _pergundaSelecionada++;
      });
    }
  }

  bool get temPerguntaSelecionada {
    return _pergundaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<String> respostas = temPerguntaSelecionada ?
    _perguntas[_pergundaSelecionada].cast() ['respostas'] :
    [];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: temPerguntaSelecionada ? Column(
          children: <Widget>[
            Questao(_perguntas[_pergundaSelecionada]['texto'].toString()),
            ...respostas.map((t) => Resposta(t, _responder)).toList()
          ],
        ) : Center(
          child: Text(
            'Parabéns',
            style: TextStyle(fontSize: 28),
          ),
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