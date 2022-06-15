import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kobza/core/model/one_letter.dart';
import 'package:kobza/features/game/cubit/game_cubit.dart';
import 'package:kobza/features/game/cubit/game_state.dart';
import 'package:kobza/features/game/screen/util/letter_state_extension.dart';

class LetterKey extends StatefulWidget {
  const LetterKey({super.key, required this.letter});
  final String letter;

  @override
  State<LetterKey> createState() => _LetterKeyState();
}

class _LetterKeyState extends State<LetterKey> {
  bool zoom = false;
  final koefZoom = 3.0;
  double widgetWidth = 25;
  double widgetHeight = 40;
  double textHeight = 16;

  @override
  Widget build(BuildContext context) {
    return BlocSelector<GameCubit, GameState, Keyboard>(
      selector: (state) => state.answers,
      builder: (context, answers) {
        return Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              child: Padding(
                padding: const EdgeInsets.all(2),
                child: Container(
                  //width: zoom ? widgetWidth * koefZoom : widgetWidth,
                  width: widgetWidth,
                  height: zoom ? widgetHeight * koefZoom : widgetHeight,
                  color: zoom
                      ? Theme.of(context).cardColor
                      : _getState(widget.letter, answers)
                          .stateToBorderColor(context),
                  child: InkWell(
                    onTap: () {
                      context.read<GameCubit>().letterPressed(widget.letter);
                    },
                    onTapDown: (details) {
                      setState(() => zoom = true);
                    },
                    onTapUp: (details) {
                      setState(() => zoom = false);
                    },
                    onTapCancel: () {
                      setState(() => zoom = false);
                    },
                    child: Center(
                      child: widget.letter == '<'
                          ? Icon(
                              Icons.backspace_outlined,
                              size: zoom ? textHeight * koefZoom : textHeight,
                              color: Theme.of(context).dividerColor,
                            )
                          : widget.letter == '>'
                              ? Icon(
                                  Icons.keyboard_return,
                                  size:
                                      zoom ? textHeight * koefZoom : textHeight,
                                  color: Theme.of(context).dividerColor,
                                )
                              : Text(
                                  widget.letter,
                                  style: TextStyle(
                                    fontSize: zoom
                                        ? textHeight * koefZoom
                                        : textHeight,
                                  ),
                                ),
                    ),
                  ),
                ),
              ),
            ),
          ],
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


// class _LetterKeyState extends State<LetterKey> {

//   @override
//   Widget build(BuildContext context) {
//     return BlocSelector<GameCubit, GameState, Keyboard>(
//       selector: (state) => state.answers,
//       builder: (context, answers) {
//         return Padding(
//           padding: const EdgeInsets.all(2),
//           child: ColoredBox(
//             color: _getState(widget.letter, answers)
//                  .stateToBorderColor(context),
//             child: InkWell(
//               onTap: context.read<GameCubit>().getEnable(widget.letter)
//                   ? () {
//                       context.read<GameCubit>().letterPressed(widget.letter);
//                     }
//                   : null,
//               child: LetterSizedBox(letter: widget.letter),
//             ),
//           ),
//         );
//       },
//     );
//   }
// }

// class LetterSizedBox extends StatelessWidget {
//   const LetterSizedBox({
//     super.key,
//     required this.letter,
//   });

//   final String letter;

//   @override
//   Widget build(BuildContext context) {
//     if (letter == '<') {
//       return const SizedBox(
//         child: Icon(Icons.backspace_outlined),
//       );
//     } else if (letter == '>') {
//       return const SizedBox(child: Icon(Icons.keyboard_return));
//     }
//     return SizedBox(
//       height: 35,
//       width: 24,
//       child: Text(
//         letter,
//         textAlign: TextAlign.center,
//       ),
//     );
//   }
// }

// LetterState _getState(String l, List<List<OneLetter>> answers) {
//   final allLetters = answers.expand((w) => w).toList();
//   if (_stateFound(LetterState.correctly, l, allLetters)) {
//     return LetterState.correctly;
//   }
//   if (_stateFound(LetterState.almostCorrectly, l, allLetters)) {
//     return LetterState.almostCorrectly;
//   }
//   if (_stateFound(LetterState.wrong, l, allLetters)) {
//     return LetterState.wrong;
//   }
//   return LetterState.initial;
// }

// bool _stateFound(LetterState state, String l, List<OneLetter> allLetters) {
//   return allLetters.any(
//     (letter) => letter.letter == l && letter.letterState == state,
//   );
// }
