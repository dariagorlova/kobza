import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kobza/core/model/one_letter.dart';
import 'package:kobza/features/game/cubit/game_cubit.dart';
import 'package:kobza/features/game/cubit/game_state.dart';
import 'package:kobza/features/game/screen/util/letter_state_extension.dart';

class LetterKey extends StatelessWidget {
  const LetterKey({super.key, required this.letter});
  final String letter;

  @override
  Widget build(BuildContext context) {
    return BlocSelector<GameCubit, GameState, Keyboard>(
      selector: (state) => state.answers,
      builder: (context, answers) {
        return Padding(
          padding: const EdgeInsets.all(2),
          child: ColoredBox(
            color: _getState(letter, answers).stateToBorderColor(context),
            child: InkWell(
              onTap: () {
                context.read<GameCubit>().letterPressed(letter);
              },
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
      },
    );
  }
}

LetterState _getState(String l, List<List<OneLetter>> answers) {
  final allLetters = answers.expand((w) => w).toList();
  if (_stateFound(LetterState.correctly, l, allLetters)) {
    return LetterState.correctly;
  }
  if (_stateFound(LetterState.almostCorrectly, l, allLetters)) {
    return LetterState.almostCorrectly;
  }
  if (_stateFound(LetterState.wrong, l, allLetters)) {
    return LetterState.wrong;
  }
  return LetterState.initial;
}

bool _stateFound(LetterState state, String l, List<OneLetter> allLetters) {
  return allLetters.any(
    (letter) => letter.letter == l && letter.letterState == state,
  );
}
