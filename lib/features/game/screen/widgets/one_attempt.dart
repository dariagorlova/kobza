import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kobza/core/model/one_letter.dart';
import 'package:kobza/features/game/cubit/game_cubit.dart';
import 'package:kobza/features/game/cubit/game_state.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OneAttempt extends StatelessWidget {
  const OneAttempt({
    super.key,
    required this.word,
  });

  final List<OneLetter> word;

  @override
  Widget build(BuildContext context) {
    final text = word.map((e) => e.letter).join();
    return PinCodeTextField(
      key: Key(text),
      controller: TextEditingController(text: text),
      appContext: context,
      length: word.length,
      animationType: AnimationType.fade,
      pinTheme: PinTheme(
        shape: PinCodeFieldShape.box,
        borderRadius: BorderRadius.circular(5),
        // fieldHeight: 50,
        // fieldWidth: 40,
        activeColor: Theme.of(context).dividerColor,
        selectedColor: Theme.of(context).dividerColor,
        inactiveColor: Theme.of(context).dividerColor,
      ),
      cursorColor: Colors.black,
      keyboardType: TextInputType.none,
      onChanged: (value) {
        // setState(() {
        //   currentText = value;
        // });
      },
      onSubmitted: (value) {
        context.read<GameCubit>().addAndAnalyzeNewAttempt(value);
      },
    );
  }
}
