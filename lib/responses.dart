import 'package:flutter/material.dart';

class Responses extends StatelessWidget {
  final String text;

  const Responses(this.text, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(text),
      onPressed: null,
    );
  }
}
