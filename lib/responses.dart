import 'package:flutter/material.dart';

class Responses extends StatelessWidget {
  final String text;
  final void Function() onSelection;

  const Responses(this.text, this.onSelection, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        child: Text(text),
        onPressed: onSelection,
      ),
    );
  }
}
