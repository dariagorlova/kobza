import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:kobza/core/service/navigator.dart';
import 'package:kobza/di/injection.dart';
import 'package:kobza/features/game/model/game_mode.dart';
import 'package:kobza/localization/localization.dart';

@RoutePage()
class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ColoredBoxGreen(text: t.letterV),
              ColoredBoxGreen(text: t.letterE),
              ColoredBoxGreen(text: t.letterR),
              ColoredBoxGreen(text: t.letterB),
              ColoredBoxGreen(text: t.letterA),
            ],
          ),
          const SizedBox(
            height: 90,
          ),
          SizedBox(
            width: 120,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ElevatedButton(
                  onPressed: () {
                    getIt<KobzaNavigator>().openGame(
                      GameMode.currentDay,
                    );
                  },
                  child: Text(
                    t.everyDayWordButtonTitle,
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          color: Colors.white,
                        ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                ElevatedButton(
                  onPressed: () {
                    getIt<KobzaNavigator>().openGame(
                      GameMode.random,
                    );
                  },
                  child: Text(
                    t.randomWordButtonTitle,
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          color: Colors.white,
                        ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ColoredBoxGreen extends StatelessWidget {
  const ColoredBoxGreen({required this.text, super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ColoredBox(
          color: Theme.of(context).primaryColor,
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Text(
              text,
              style: Theme.of(context).textTheme.displaySmall!.copyWith(
                    color: Colors.white,
                  ),
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
      ],
    );
  }
}
