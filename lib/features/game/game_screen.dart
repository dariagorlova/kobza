import 'package:flutter/material.dart';
import 'package:kobza/localization/localization.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

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
            // Padding(
            //   padding: const EdgeInsets.all(10),
            //   child: Center(
            //     // child: ListView.builder(
            //     //   itemBuilder: (ctx, i) => const OneAttempt(),
            //     //   itemCount: 6,
            //     // ),
            //     //OneAttempt(),

            //   ),
            // ),
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
    return Column(
      children: const [
        Text('1 attempt'),
        Text('2 attempt'),
        Text('3 attempt'),
        Text('4 attempt'),
        Text('5 attempt'),
        Text('6 attempt'),
        // OneAttempt(),
        // OneAttempt(),
        // OneAttempt(),
      ],
    );
  }
}

class VirtualKeyboard extends StatelessWidget {
  const VirtualKeyboard({super.key});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            LetterKey(
              letter: t.letterJ,
            ),
            LetterKey(
              letter: t.letterC,
            ),
            LetterKey(
              letter: t.letterU,
            ),
            LetterKey(
              letter: t.letterK,
            ),
            LetterKey(
              letter: t.letterE,
            ),
            LetterKey(
              letter: t.letterN,
            ),
            LetterKey(
              letter: t.letterG,
            ),
            LetterKey(
              letter: t.letterG2,
            ),
            LetterKey(
              letter: t.letterSH,
            ),
            LetterKey(
              letter: t.letterSHCH,
            ),
            LetterKey(
              letter: t.letterZ,
            ),
            LetterKey(
              letter: t.letterH,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            LetterKey(
              letter: t.letterF,
            ),
            LetterKey(
              letter: t.letterI,
            ),
            LetterKey(
              letter: t.letterJI,
            ),
            LetterKey(
              letter: t.letterV,
            ),
            LetterKey(
              letter: t.letterA,
            ),
            LetterKey(
              letter: t.letterP,
            ),
            LetterKey(
              letter: t.letterR,
            ),
            LetterKey(
              letter: t.letterO,
            ),
            LetterKey(
              letter: t.letterL,
            ),
            LetterKey(
              letter: t.letterD,
            ),
            LetterKey(
              letter: t.letterZH,
            ),
            LetterKey(
              letter: t.letterJE,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Icon(Icons.backspace_rounded),
            LetterKey(
              letter: t.letterJA,
            ),
            LetterKey(
              letter: t.letterCH,
            ),
            LetterKey(
              letter: t.letterM,
            ),
            LetterKey(
              letter: t.letterY,
            ),
            LetterKey(
              letter: t.letterT,
            ),
            LetterKey(
              letter: t.letterSoftSign,
            ),
            LetterKey(
              letter: t.letterB,
            ),
            LetterKey(
              letter: t.letterJU,
            ),
            const Icon(Icons.keyboard_return),
          ],
        ),
      ],
    );
  }
}

class LetterKey extends StatelessWidget {
  const LetterKey({super.key, required this.letter});
  final String letter;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2),
      child: DecoratedBox(
        decoration: BoxDecoration(
          border: Border.all(
            color: Theme.of(context).dividerColor,
          ),
        ),
        child: InkWell(
          onTap: () {},
          child: SizedBox(
            height: 25,
            width: 20,
            child: Text(
              letter,
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}

class OneAttempt extends StatefulWidget {
  const OneAttempt({
    super.key,
  });

  @override
  State<OneAttempt> createState() => _OneAttemptState();
}

class _OneAttemptState extends State<OneAttempt> {
  TextEditingController textEditingController = TextEditingController();

  String currentText = '';
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      appContext: context,
      length: 5,
      animationType: AnimationType.fade,
      pinTheme: PinTheme(
        shape: PinCodeFieldShape.box,
        borderRadius: BorderRadius.circular(5),
        fieldHeight: 50,
        fieldWidth: 40,
        activeFillColor: Colors.white,
        selectedFillColor: Colors.white,
        inactiveFillColor: Colors.white,
        activeColor: Theme.of(context).primaryColor,
        selectedColor: Theme.of(context).primaryColor,
        inactiveColor: Theme.of(context).primaryColor,
      ),
      cursorColor: Colors.black,
      animationDuration: const Duration(milliseconds: 300),
      controller: textEditingController,
      keyboardType: TextInputType.none,
      onChanged: (value) {
        setState(() {
          currentText = value;
        });
      },
    );
  }
}
