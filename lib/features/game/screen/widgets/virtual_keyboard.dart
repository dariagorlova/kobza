import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kobza/features/game/cubit/game_cubit.dart';
import 'package:kobza/features/game/cubit/game_state.dart';
import 'package:kobza/features/game/screen/widgets/letter_key.dart';

class VirtualKeyboard extends StatelessWidget {
  const VirtualKeyboard({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocSelector<GameCubit, GameState, List<List<String>>>(
      selector: (state) => state.keyboard,
      builder: (context, keyboard) => Stack(
        children: getKeyboardPositionedKeys(keyboard, context),
      ),
    );
  }

  List<Widget> getKeyboardPositionedKeys(
    List<List<String>> keyboard,
    BuildContext context,
  ) {
    const standardKeyWidth = 27.0;

    final totalWidth = MediaQuery.of(context).size.width;
    const fontHeight = standardKeyWidth - 5;
    const keyboardHeight = 115;

    const keyCount = 12;
    const spaceCount = 13;
    final gapSize = (totalWidth - keyCount * standardKeyWidth) / spaceCount;

    final standardKeyHeight = (keyboardHeight - 3 * gapSize) / 3;

    const keyCountRowWithIcons = 9;
    const spaceCountRowWithIcons = 12;
    final iconButtonSize = (totalWidth -
            (keyCountRowWithIcons * standardKeyWidth +
                spaceCountRowWithIcons * gapSize)) /
        2;

    var curRow = 3;
    var curItemInRow = -1;
    final fullKeyboard = <Widget>[];

    for (final line in keyboard) {
      curRow--;
      curItemInRow = -1;
      var leftPosition = gapSize;

      fullKeyboard.addAll(
        line.map(
          (element) {
            curItemInRow++;
            var isIconButton = false;
            if ((curRow == 0 && curItemInRow == 0) ||
                (curRow == 0 && curItemInRow == 10)) {
              isIconButton = true;
            }

            var rightPosition = totalWidth - leftPosition;
            rightPosition -= isIconButton ? iconButtonSize : standardKeyWidth;

            final item = Positioned(
              bottom: keyboardHeight * (curRow / 3),
              left: leftPosition - gapSize / 2,
              right: rightPosition - gapSize / 2,
              child: Center(
                child: LetterKey(
                  letter: element,
                  keyWidth: isIconButton ? iconButtonSize : standardKeyWidth,
                  charSize: fontHeight,
                  keyHeight: standardKeyHeight,
                ),
              ),
            );

            leftPosition += isIconButton
                ? gapSize + iconButtonSize
                : gapSize + standardKeyWidth;

            return item;
          },
        ),
      );
    }

    return fullKeyboard;
  }
}

// class VirtualKeyboard extends StatelessWidget {
//   const VirtualKeyboard({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return BlocSelector<GameCubit, GameState, List<List<String>>>(
//       selector: (state) => state.keyboard,
//       builder: (context, keyboard) => Column(
//         children: keyboard
//             .map(
//               (line) => Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: line.map((c) => LetterKey(letter: c)).toList(),
//               ),
//             )
//             .toList(),
//       ),
//     );
//   }
// }
