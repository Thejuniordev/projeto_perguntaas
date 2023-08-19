import 'package:flutter/material.dart';
import 'package:projeto_perguntas/quiz.dart';
import 'package:projeto_perguntas/result.dart';

main() {
  runApp(const PerguntaApp());
}

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  var _totalPoints = 0;
  final List<Map<String, Object>> _perguntas = const [
    {
      'text': 'Qual dessas tags pertencem ao html?',
      'reponse': [
        {'texto': '<grid>', 'point': 0},
        {'texto': '<text>', 'point': 0},
        {'texto': '<body>', 'point': 10},
        {'texto': '<green>', 'point': 0},
      ],
    },
    {
      'text': 'Qual é o nome da tag de cabeçalho do html?',
      'reponse': [
        {'texto': '<body>', 'point': 0},
        {'texto': '<section>', 'point': 0},
        {'texto': '<html>', 'point': 0},
        {'texto': '<head>', 'point': 10},
      ],
    },
    {
      'text': 'Qual dos itens simboliza uma arrow function?',
      'reponse': [
        {'texto': '<() == (){}>', 'point': 0},
        {'texto': '() => {}', 'point': 10},
        {'texto': '{} => ()', 'point': 0},
        {'texto': '{() => {}}', 'point': 0},
      ],
    }
  ];
  void _responder(int point) {
    if (hasSelectedQuestions) {
      setState(() {
        _perguntaSelecionada++;
        _totalPoints += point;
      });
    }
    print('Pontuação: ${_totalPoints}');
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
            : Result(
                point: _totalPoints,
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
