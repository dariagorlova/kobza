import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kobza/features/game/screen/widgets/letter_key.dart';
import 'i_tap_icon.dart';

Future<void> iEnterWordTimes(
  WidgetTester tester,
  List<String> word,
  int times,
) async {
  for (var t = 0; t < times; t++) {
    for (final l in word) {
      await tester.tap(
        find.byWidgetPredicate(
          (widget) => widget is LetterKey && widget.letter == l,
        ),
      );
      await tester.pump();
    }
    await iTapIcon(tester, Icons.keyboard_return);
  }
}
