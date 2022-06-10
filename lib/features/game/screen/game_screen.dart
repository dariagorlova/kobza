import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kobza/di/injection.dart';
import 'package:kobza/features/game/cubit/game_cubit.dart';
import 'package:kobza/features/game/cubit/game_state.dart';
import 'package:kobza/features/game/screen/widgets/letter_key.dart';
import 'package:kobza/features/game/screen/widgets/one_attempt.dart';
import 'package:kobza/features/game/screen/widgets/virtual_keyboard.dart';
import 'package:kobza/localization/localization.dart';

class GameScreen extends StatelessWidget {
  const GameScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<GameCubit>(),
      child: const _GameScreen(),
    );
  }
}

class _GameScreen extends StatefulWidget {
  const _GameScreen();

  @override
  State<_GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<_GameScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: BlocListener<GameCubit, GameState>(
        listenWhen: (previous, current) =>
            !previous.wrongWordDialog && current.wrongWordDialog,
        listener: (context, state) {
          final t = AppLocalizations.of(context);
          showAlertDialog(
            context,
            t.notCorrectWordDlgTitle,
            t.notCorrectWordDlgBody,
          );
        },
        child: BlocListener<GameCubit, GameState>(
          listenWhen: (previous, current) =>
              !previous.playerWon && current.playerWon,
          listener: (context, state) async {
            final t = AppLocalizations.of(context);
            await showAlertDialog(
              context,
              t.congratulationtDlgTitle,
              t.congratulationDlgBody,
            );
            if (mounted) {
              Navigator.pop(context);
            }
          },
          child: SafeArea(
            child: Column(
              children: [
                IconButton(
                  alignment: Alignment.topRight,
                  onPressed: () {
                    context.read<GameCubit>().endGame();
                  },
                  icon: const Icon(Icons.close),
                ),
                const Expanded(
                  child: GameField(),
                ),
                const VirtualKeyboard(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class GameField extends StatelessWidget {
  const GameField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 50, right: 50),
      child: BlocSelector<GameCubit, GameState, Keyboard>(
        selector: (state) => state.answers,
        builder: (context, words) {
          return Column(
            children: words
                .map(
                  (word) => OneAttempt(
                    word: word,
                  ),
                )
                .toList(),
          );
        },
      ),
    );
  }
}
