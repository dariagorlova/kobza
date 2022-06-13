import 'package:flutter/material.dart';
import 'package:kobza/core/model/one_letter.dart';
import 'package:kobza/features/game/screen/util/letter_state_extension.dart';

class LetterBox extends StatelessWidget {
  const LetterBox({
    super.key,
    required this.letter,
  });

  final OneLetter letter;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      width: MediaQuery.of(context).size.width / 10,
      color: letter.letterState.stateToBorderColor(context),
      child: Text(
        letter.letter,
      ),
    );
  }
}
