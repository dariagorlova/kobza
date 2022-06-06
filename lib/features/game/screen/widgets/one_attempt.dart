import 'package:flutter/material.dart';
import 'package:kobza/core/model/one_letter.dart';
import 'package:kobza/features/game/screen/widgets/letter_box.dart';

class OneAttempt extends StatelessWidget {
  const OneAttempt({
    super.key,
    required this.word,
  });

  final List<OneLetter> word;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: word.map((letter) => LetterBox(letter: letter)).toList(),
      ),
    );
  }
}
