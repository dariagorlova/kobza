import 'package:flutter/material.dart';
import 'package:kobza/core/model/one_letter.dart';

extension XLetterState on LetterState {
  Color stateToBorderColor(BuildContext context) {
    switch (this) {
      case LetterState.initial:
        return Theme.of(context).canvasColor;
      case LetterState.almostCorrectly:
        return Theme.of(context).splashColor;
      case LetterState.correctly:
        return Theme.of(context).focusColor;
      case LetterState.wrong:
        return Theme.of(context).errorColor;
    }
  }
}
