import 'package:flutter/material.dart';
import 'package:kobza/core/model/one_letter.dart';

extension XOneLetter on OneLetter {
  Color stateToBorderColor(BuildContext context) {
    switch (letterState) {
      case LetterState.initial:
        return Colors.grey;
        return Theme.of(context).focusColor;
      case LetterState.almostCorrectly:
        return Colors.orange;
        return Theme.of(context).focusColor;
      case LetterState.correctly:
        return Colors.green;
        return Theme.of(context).focusColor;
      case LetterState.wrong:
        return Colors.red;
        return Theme.of(context).focusColor;
    }
  }
}
