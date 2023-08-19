import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int point;
  const Result({required this.point, Key? key}) : super(key: key);

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
    return Center(
      child: Text(
        resultText,
        style: const TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
