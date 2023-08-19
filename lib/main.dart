import 'package:flutter/material.dart';
import 'package:projeto_perguntas/quiz.dart';
import 'package:projeto_perguntas/result.dart';

main() {
  runApp(const PerguntaApp());
}

class _PerguntaAppState extends State<PerguntaApp> {
  int _perguntaSelecionada = 0;
  final List<Map<String, Object>> _perguntas = const [
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
  void _responder() {
    setState(() {
      _perguntaSelecionada++;
    });
  }

  bool get hasSelectedQuestions {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Perguntas'),
        ),
        body: hasSelectedQuestions
            ? Quiz(
                perguntas: _perguntas,
                perguntaSelecionada: _perguntaSelecionada,
                responder: _responder)
            : const Result(),
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
