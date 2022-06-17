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
  OverlayEntry? _overlayEntry;

  @override
  Widget build(BuildContext context) {
    return BlocSelector<GameCubit, GameState, Keyboard>(
      selector: (state) => state.answers,
      builder: (context, answers) {
        return Padding(
          padding: const EdgeInsets.all(2),
          child: ColoredBox(
            color:
                _getState(widget.letter, answers).stateToBorderColor(context),
            child: Container(
              foregroundDecoration:
                  !context.read<GameCubit>().getEnable(widget.letter)
                      ? BoxDecoration(
                          color: Theme.of(context).errorColor,
                          backgroundBlendMode: BlendMode.lighten,
                        )
                      : null,
              child: InkWell(
                onTap: context.read<GameCubit>().getEnable(widget.letter)
                    ? () {
                        context.read<GameCubit>().letterPressed(widget.letter);
                      }
                    : null,
                onTapDown: (details) {
                  final color = _getState(widget.letter, answers)
                      .stateToBorderColor(context);
                  final overlay = _createOverlayEntry(
                    context,
                    widget.letter,
                    color,
                  );
                  _overlayEntry = overlay;
                  if (overlay != null) {
                    Overlay.of(context)?.insert(overlay);
                  }
                },
                onTapUp: (details) {
                  _overlayEntry?.remove();
                },
                onTapCancel: () {
                  _overlayEntry?.remove();
                },
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: LetterSizedBox(
                    letter: widget.letter,
                    size: 19,
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

class LetterSizedBox extends StatelessWidget {
  const LetterSizedBox({
    super.key,
    required this.letter,
    required this.size,
  });

  final String letter;
  final double size;

  @override
  Widget build(BuildContext context) {
    if (letter == '<') {
      return Icon(
        Icons.backspace_outlined,
        size: size,
      );
    } else if (letter == '>') {
      return Icon(
        Icons.keyboard_return,
        size: size,
      );
    }
    return Text(
      letter,
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: size),
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

OverlayEntry? _createOverlayEntry(
  BuildContext context,
  String letter,
  Color color,
) {
  final renderBox = context.findRenderObject() as RenderBox?;
  if (renderBox == null) {
    return null;
  }
  final size = renderBox.size;
  final offset = renderBox.localToGlobal(Offset.zero);

  return OverlayEntry(
    builder: (context) => Positioned(
      left: offset.dx,
      top: offset.dy - size.height - 5.0,
      width: size.width,
      height: size.height * 2,
      child: Material(
        color: color,
        child: LetterSizedBox(letter: letter, size: size.height * 0.8),
      ),
    ),
  );
}

// @override
// Widget build(BuildContext context) {
// 	return Scaffold(
// 	appBar: AppBar(
// 		title: Text(
// 		'GeeksForGeeks Example 2',
// 		style: TextStyle(fontWeight: FontWeight.bold),
// 		),
// 	),
// 	body: SafeArea(
// 		child: Center(
// 			child: MaterialButton(
// 		color: Colors.green,
// 		minWidth: MediaQuery.of(context).size.width * 0.4,
// 		height: MediaQuery.of(context).size.height * 0.06,
// 		child: Text(
// 		'show Overlay',
// 		style: TextStyle(color: Colors.white),
// 		),
// 		onPressed: () {
// 		// calling the _showOverlay method
// 		// when Button is pressed
// 		_showOverlay(context);
// 		},
// 	))),
// 	);
// }
// }
