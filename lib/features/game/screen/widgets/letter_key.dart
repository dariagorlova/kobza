import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kobza/core/model/one_letter.dart';
import 'package:kobza/features/game/cubit/game_cubit.dart';
import 'package:kobza/features/game/cubit/game_state.dart';
import 'package:kobza/features/game/screen/util/letter_state_extension.dart';

class LetterKey extends StatefulWidget {
  const LetterKey({
    super.key,
    required this.letter,
    double? keyWidth,
    double? keyHeight,
    double? charSize,
  })  : width = keyWidth ?? 25,
        height = keyHeight ?? 40,
        textHeight = charSize ?? 16;
  final String letter;
  final double width;
  final double height;
  final double textHeight;

  @override
  State<LetterKey> createState() => _LetterKeyState();
}

class _LetterKeyState extends State<LetterKey> {
  bool zoom = false;
  final koefZoom = 1.4;

  @override
  Widget build(BuildContext context) {
    return BlocSelector<GameCubit, GameState, Keyboard>(
      selector: (state) => state.answers,
      builder: (context, answers) {
        // final temp = Stack(clipBehavior: Clip.none,);
        return Padding(
          padding: const EdgeInsets.all(2),
          child: Container(
            width: zoom ? widget.width * koefZoom : widget.width,
            height: zoom ? widget.height * koefZoom : widget.height,
            color: zoom
                ? Theme.of(context).cardColor
                : _getState(widget.letter, answers).stateToBorderColor(context),
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
                        size: zoom
                            ? widget.textHeight * koefZoom
                            : widget.textHeight,
                        color: Theme.of(context).dividerColor,
                      )
                    : widget.letter == '>'
                        ? Icon(
                            Icons.keyboard_return,
                            size: zoom
                                ? widget.textHeight * koefZoom
                                : widget.textHeight,
                            color: Theme.of(context).dividerColor,
                          )
                        : Text(
                            widget.letter,
                            style: TextStyle(
                              fontSize: zoom
                                  ? widget.textHeight * koefZoom
                                  : widget.textHeight,
                            ),
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

// class LetterKey extends StatelessWidget {
//   const LetterKey({super.key, required this.letter});
//   final String letter;

//   @override
//   Widget build(BuildContext context) {
//     return BlocSelector<GameCubit, GameState, Keyboard>(
//       selector: (state) => state.answers,
//       builder: (context, answers) {
//         return Padding(
//           padding: const EdgeInsets.all(2),
//           child: ColoredBox(
//             color: _getState(letter, answers).stateToBorderColor(context),
//             child: InkWell(
//               onTap: context.read<GameCubit>().getEnable(letter)
//                   ? () {
//                       context.read<GameCubit>().letterPressed(letter);
//                     }
//                   : null,
//               child: LetterSizedBox(
//                 letter: letter,
//               ),
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
//         //style: TextStyle(fontSize: zoom ? 22 : 16),
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
