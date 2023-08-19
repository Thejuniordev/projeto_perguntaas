import 'package:flutter/material.dart';
import 'package:projeto_perguntas/question.dart';
import 'package:projeto_perguntas/responses.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> perguntas;
  final int perguntaSelecionada;
  final void Function() responder;

  const Quiz({
    required this.perguntas,
    required this.perguntaSelecionada,
    required this.responder,
    Key? key,
  }) : super(key: key);

  bool get hasSelectedQuestions {
    return perguntaSelecionada < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<String> responses = hasSelectedQuestions
        ? perguntas[perguntaSelecionada].cast()['reponse']
        : [];
    return Column(
      children: <Widget>[
        Question(perguntas[perguntaSelecionada]['text'].toString()),
        ...responses.map((text) => Responses(text, responder)).toList(),
      ],
    );
  }
}
