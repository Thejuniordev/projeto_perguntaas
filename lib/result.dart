import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int point;
  final void Function() onRestartQuiz;

  const Result({
    required this.point,
    required this.onRestartQuiz,
    Key? key,
  }) : super(key: key);

  String get resultText {
    if (point >= 30) {
      return 'Parabéns meu nobre';
    } else if (point <= 15) {
      return 'Ai não né meu nobre =(';
    } else {
      return 'Sei lá meu nobre';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            resultText,
            style: const TextStyle(fontSize: 28),
            textAlign: TextAlign.center,
          ),
        ),
        FlatButton(
          onPressed: onRestartQuiz,
          child: const Text(
            'Tenta de novo ai',
            style: TextStyle(fontSize: 18),
          ),
          textColor: Colors.blueAccent,
        )
      ],
    );
  }
}
