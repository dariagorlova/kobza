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
    return LayoutBuilder(
      builder: (context, constraints) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: word
              .map(
                (letter) => Padding(
                  padding: const EdgeInsets.all(4),
                  child: LetterBox(
                    letter: letter,
                    width: constraints.maxWidth / 6,
                  ),
                ),
              )
              .toList(),
        );
      },
    );
  }
}
