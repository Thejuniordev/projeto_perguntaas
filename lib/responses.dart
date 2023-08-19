import 'package:flutter/material.dart';

class Responses extends StatelessWidget {
  final String text;
  final void Function() onSelection;

  const Responses(this.text, this.onSelection, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 300,
          child: ElevatedButton(
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 25,
                color: Color.fromARGB(255, 161, 229, 254),
              ),
            ),
            onPressed: onSelection,
            style: ElevatedButton.styleFrom(
                primary: const Color.fromARGB(255, 4, 23, 67),
                onPrimary: const Color.fromARGB(255, 7, 90, 255),
                elevation: 20, // Elevation
                shadowColor: const Color.fromARGB(255, 54, 164, 255),
                padding: const EdgeInsets.all(25)
                // Shadow Color
                ),
          ),
        ),
        const SizedBox(
          height: 30,
        )
      ],
    );
  }
}
