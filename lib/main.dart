import 'package:flutter/material.dart';
import 'package:projeto_perguntas/responses.dart';
import './question.dart';

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
    List<String> responses = hasSelectedQuestions
        ? _perguntas[_perguntaSelecionada].cast()['reponse']
        : <String>[];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Perguntas'),
        ),
        body: hasSelectedQuestions
            ? Column(
                children: <Widget>[
                  //Question(perguntas[_perguntaSelecionada]['text']), Mudou na versão 3 do flutter
                  Question(_perguntas[_perguntaSelecionada]['text'].toString()),
                  ...responses
                      .map((text) => Responses(text, _responder))
                      .toList(),
                ],
              )
            : const Center(
                child: Text(
                  'Parabains!',
                  style: TextStyle(fontSize: 28),
                ),
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
