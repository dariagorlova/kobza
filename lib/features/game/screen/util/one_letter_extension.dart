import 'package:flutter/material.dart';
import 'package:kobza/core/model/one_letter.dart';

extension XOneLetter on OneLetter {
  Color stateToBorderColor(BuildContext context) {
    switch (letterState) {
      case LetterState.initial:
        return Colors.grey;
      case LetterState.almostCorrectly:
        return Colors.orange;
      case LetterState.correctly:
        return Colors.green;
      case LetterState.wrong:
        return Colors.red;
    }
  }
}
