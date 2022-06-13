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
      builder: (context, keyboard) => Column(
        children: keyboard
            .map(
              (line) => Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: line.map((c) => LetterKey(letter: c)).toList(),
              ),
            )
            .toList(),
      ),
    );
  }
}
