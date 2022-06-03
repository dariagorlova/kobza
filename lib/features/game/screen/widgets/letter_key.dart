import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kobza/core/model/one_letter.dart';
import 'package:kobza/features/game/cubit/game_cubit.dart';
import 'package:kobza/features/game/screen/util/one_letter_extension.dart';

class LetterKey extends StatelessWidget {
  const LetterKey({super.key, required this.letter});
  final OneLetter letter;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2),
      child: ColoredBox(
        // decoration: BoxDecoration(
        //   border: Border.all(
        color: letter.stateToBorderColor(context),
        //   ),
        // ),
        child: InkWell(
          onTap: () {
            context.read<GameCubit>().letterPressed(letter.letter);
          },
          child: SizedBox(
            height: 35,
            width: 24,
            child: Text(
              letter.letter,
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
