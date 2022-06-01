import 'package:flutter/material.dart';

class LetterKey extends StatelessWidget {
  const LetterKey({super.key, required this.letter});
  final String letter;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2),
      child: DecoratedBox(
        decoration: BoxDecoration(
          border: Border.all(
            color: Theme.of(context).dividerColor,
          ),
        ),
        child: InkWell(
          onTap: () {},
          child: SizedBox(
            height: 35,
            width: 24,
            child: Text(
              letter,
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
