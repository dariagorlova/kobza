import 'package:flutter/material.dart';
import 'package:kobza/localization/localization.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ColoredBoxGreen(text: t.letterK),
              ColoredBoxGreen(text: t.letterO),
              ColoredBoxGreen(text: t.letterB),
              ColoredBoxGreen(text: t.letterZ),
              ColoredBoxGreen(text: t.letterA),
            ],
          ),
          const SizedBox(
            height: 90,
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text(
              t.everyDayWordButtonTitle,
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text(
              t.randomWordButtonTitle,
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
        ],
      ),
    );
  }
}

class ColoredBoxGreen extends StatelessWidget {
  ColoredBoxGreen({required this.text, super.key});

  String text;

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
              style: Theme.of(context).textTheme.headline3,
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
