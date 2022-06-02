import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kobza/di/injection.dart';
import 'package:kobza/features/game/cubit/game_cubit.dart';
import 'package:kobza/features/game/screen/widgets/one_attempt.dart';
import 'package:kobza/features/game/screen/widgets/virtual_keyboard.dart';

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

class _GameScreen extends StatelessWidget {
  const _GameScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: SafeArea(
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
    );
  }
}

class GameField extends StatelessWidget {
  const GameField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 50, right: 50),
      child: Column(
        children: const [
          OneAttempt(),
          OneAttempt(),
          OneAttempt(),
          OneAttempt(),
          OneAttempt(),
          OneAttempt(),
        ],
      ),
    );
  }
}
