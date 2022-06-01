import 'package:flutter/material.dart';
import 'package:kobza/features/game/screen/widgets/one_attempt.dart';
import 'package:kobza/features/game/screen/widgets/virtual_keyboard.dart';

class GameScreen extends StatelessWidget {
  const GameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        body: Column(
          children: [
            IconButton(
              alignment: Alignment.topRight,
              onPressed: () {},
              icon: const Icon(Icons.close),
            ),
            const Expanded(
              flex: 3,
              child: GameField(),
            ),
            const Expanded(
              child: VirtualKeyboard(),
            ),
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
