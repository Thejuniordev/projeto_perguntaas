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
    final List<String> perguntas = [
      'Qual é a sua cor favorita?',
      'Qual é o seu animal favorito?',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Perguntas'),
        ),
        body: Column(
          children: [
            Question(perguntas[_perguntaSelecionada]),
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
  PerguntaApp({Key? key}) : super(key: key);

  @override
  State<PerguntaApp> createState() {
    return _PerguntaAppState();
  }
}
