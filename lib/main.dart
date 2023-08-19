import 'package:flutter/material.dart';
import 'package:projeto_perguntas/responses.dart';
import './question.dart';

main() {
  runApp(const PerguntaApp());
}

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  void _responder() {
    setState(() {
      _perguntaSelecionada++;
    });
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

    List<String> responses = perguntas[_perguntaSelecionada].cast()['response'];

    // for (var textResp in responses) {
    //   widgets.add(Responses(textResp, _responder));
    // }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Perguntas'),
        ),
        body: Column(
          children: [
            //Question(perguntas[_perguntaSelecionada]['text']), Mudou na versão 3 do flutter
            Question(perguntas[_perguntaSelecionada]['text'].toString()),
            ...responses.map((text) => Responses(text, _responder)).toList(),
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
