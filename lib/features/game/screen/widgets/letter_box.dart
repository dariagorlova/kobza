import 'package:flutter/material.dart';
import 'package:kobza/core/model/one_letter.dart';
import 'package:kobza/features/game/screen/util/letter_state_extension.dart';

class LetterBox extends StatelessWidget {
  const LetterBox({
    super.key,
    required this.letter,
    required this.width,
  });

  final OneLetter letter;
  final double width;

  @override
  Widget build(BuildContext context) {
    // final textHeight = width * 0.8;
    return Container(
      width: width,
      padding: const EdgeInsets.all(8),
      // height: height,
      // width: MediaQuery.of(context).size.width / 8,
      // height: MediaQuery.of(context).size.height / 12,
      color: letter.letterState.stateToBorderColor(context),
      alignment: Alignment.center,
      child: Text(
        letter.letter,
        style: Theme.of(context).textTheme.headline3?.copyWith(
              color: Theme.of(context).dividerColor,
            ),
      ),
    );
  }
}
