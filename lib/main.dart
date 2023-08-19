import 'package:flutter/material.dart';
import 'package:projeto_perguntas/responses.dart';
import './question.dart';

main() {
  runApp(PerguntaApp());
}

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  void _responder() {
    setState(() {
      _perguntaSelecionada++;
    });
    print(_perguntaSelecionada);
  }

  @override
  Widget build(BuildContext context) {
    final perguntas = [
      {
        'text': 'Qual é a sua cor favorita?',
        'reponse': ['black', 'red', 'yellow', 'green'],
      },
      {
        'text': 'Qual é o seu animal favorito',
        'reponse': ['dog', 'cat', 'bird', 'horse'],
      },
      {
        'text': 'Qual é seu carro favorito',
        'reponse': ['Dodge', 'Land Rover', 'Ferrari', 'Porshe'],
      }
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Perguntas'),
        ),
        body: Column(
          children: [
            //Question(perguntas[_perguntaSelecionada]['text']), Mudou na versão 3 do flutter
            Question(perguntas[_perguntaSelecionada]['text'].toString()),
            Responses('Resposta 1', _responder),
            Responses('Resposta 2', _responder),
            Responses('Resposta 3', _responder),
          ],
        ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  const PerguntaApp({Key? key}) : super(key: key);

  @override
  State<PerguntaApp> createState() {
    return _PerguntaAppState();
  }
}
