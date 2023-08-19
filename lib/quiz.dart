import 'package:flutter/material.dart';
import 'package:projeto_perguntas/question.dart';
import 'package:projeto_perguntas/responses.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> perguntas;
  final int perguntaSelecionada;
  final void Function(int) responder;

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
    List<Map<String, Object>> responses = hasSelectedQuestions
        ? perguntas[perguntaSelecionada].cast()['reponse']
            as List<Map<String, Object>>
        : [];
    return Column(
      children: <Widget>[
        Question(perguntas[perguntaSelecionada]['text'].toString()),
        ...responses.map((resp) {
          return Responses(
            resp['texto'].toString(),
            () => responder(int.parse(resp['point'].toString())),
          );
        })
      ],
    );
  }
}
