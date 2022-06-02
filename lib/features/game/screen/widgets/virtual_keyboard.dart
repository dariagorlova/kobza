import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kobza/features/game/cubit/game_cubit.dart';
import 'package:kobza/features/game/cubit/game_state.dart';
import 'package:kobza/features/game/screen/widgets/letter_key.dart';
import 'package:kobza/localization/localization.dart';

class VirtualKeyboard extends StatelessWidget {
  const VirtualKeyboard({super.key});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);
    return BlocSelector<GameCubit, GameState, Keyboard>(
        selector: (state) => state.keyboard,
        builder: (context, keyboard) => Column(
              children: keyboard
                  .map(
                    (line) => Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: line
                          .map(
                            (c) => LetterKey(letter: c.letter),
                          )
                          .toList(),
                    ),
                  )
                  .toList(),
            )

        //  Column(
        //   children: [
        //     Row(
        //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //       children: [
        //         LetterKey(
        //           letter: t.letterJ,
        //         ),
        //         LetterKey(
        //           letter: t.letterC,
        //         ),
        //         LetterKey(
        //           letter: t.letterU,
        //         ),
        //         LetterKey(
        //           letter: t.letterK,
        //         ),
        //         LetterKey(
        //           letter: t.letterE,
        //         ),
        //         LetterKey(
        //           letter: t.letterN,
        //         ),
        //         LetterKey(
        //           letter: t.letterG,
        //         ),
        //         LetterKey(
        //           letter: t.letterG2,
        //         ),
        //         LetterKey(
        //           letter: t.letterSH,
        //         ),
        //         LetterKey(
        //           letter: t.letterSHCH,
        //         ),
        //         LetterKey(
        //           letter: t.letterZ,
        //         ),
        //         LetterKey(
        //           letter: t.letterH,
        //         ),
        //       ],
        //     ),
        //     Row(
        //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //       children: [
        //         LetterKey(
        //           letter: t.letterF,
        //         ),
        //         LetterKey(
        //           letter: t.letterI,
        //         ),
        //         LetterKey(
        //           letter: t.letterJI,
        //         ),
        //         LetterKey(
        //           letter: t.letterV,
        //         ),
        //         LetterKey(
        //           letter: t.letterA,
        //         ),
        //         LetterKey(
        //           letter: t.letterP,
        //         ),
        //         LetterKey(
        //           letter: t.letterR,
        //         ),
        //         LetterKey(
        //           letter: t.letterO,
        //         ),
        //         LetterKey(
        //           letter: t.letterL,
        //         ),
        //         LetterKey(
        //           letter: t.letterD,
        //         ),
        //         LetterKey(
        //           letter: t.letterZH,
        //         ),
        //         LetterKey(
        //           letter: t.letterJE,
        //         ),
        //       ],
        //     ),
        //     Row(
        //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //       children: [
        //         const Icon(Icons.backspace_rounded),
        //         LetterKey(
        //           letter: t.letterJA,
        //         ),
        //         LetterKey(
        //           letter: t.letterCH,
        //         ),
        //         LetterKey(
        //           letter: t.letterM,
        //         ),
        //         LetterKey(
        //           letter: t.letterY,
        //         ),
        //         LetterKey(
        //           letter: t.letterT,
        //         ),
        //         LetterKey(
        //           letter: t.letterSoftSign,
        //         ),
        //         LetterKey(
        //           letter: t.letterB,
        //         ),
        //         LetterKey(
        //           letter: t.letterJU,
        //         ),
        //         const Icon(Icons.keyboard_return),
        //       ],
        //     ),
        //   ],
        // ),
        );
  }
}
