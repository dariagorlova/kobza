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
    final textHeight = MediaQuery.of(context).size.width / 14;
    return Container(
      width: MediaQuery.of(context).size.width / 8,
      height: MediaQuery.of(context).size.height / 12,
      color: letter.letterState.stateToBorderColor(context),
      child: Center(
        child: Text(
          letter.letter,
          style: TextStyle(
            fontSize: textHeight,
            //fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
