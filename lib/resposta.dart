import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {

  final String textoResposta;
  final void Function() quandoSelecionado;

  Resposta(this.textoResposta, this.quandoSelecionado);

  @override
  Widget build(BuildContext context){
    return Container(
        width: double.infinity,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                textStyle: const TextStyle(color: Colors.white),
                backgroundColor: Colors.blue
            ),
            child: Text(textoResposta),
            onPressed: quandoSelecionado
        )
    );
  }
}
