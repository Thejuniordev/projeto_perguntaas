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
      'text': 'Qual dessas tags pertencem ao html?',
      'reponse': [
        {'texto': '<grid>', 'nota': 0},
        {'texto': '<text>', 'nota': 0},
        {'texto': '<body>', 'nota': 10},
        {'texto': '<green>', 'nota': 0},
      ],
    },
    {
      'text': 'Qual é o nome da tag de cabeçalho do html?',
      'reponse': [
        {'texto': '<body>', 'nota': 0},
        {'texto': '<section>', 'nota': 0},
        {'texto': '<html>', 'nota': 0},
        {'texto': '<head>', 'nota': 10},
      ],
    },
    {
      'text': 'Qual dos itens simboliza uma arrow function?',
      'reponse': [
        {'texto': '<() == (){}>', 'nota': 0},
        {'texto': '() => {}', 'nota': 10},
        {'texto': '{} => ()', 'nota': 0},
        {'texto': '{() => {}}', 'nota': 0},
      ],
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
