import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ColoredBoxGreen(text: 'K'),
              ColoredBoxGreen(text: 'О'),
              ColoredBoxGreen(text: 'Б'),
              ColoredBoxGreen(text: 'З'),
              ColoredBoxGreen(text: 'А'),
            ],
          ),
          const SizedBox(
            height: 90,
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text(
              'Щодня',
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text(
              'Абищо',
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
            padding: const EdgeInsets.all(8.0),
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
