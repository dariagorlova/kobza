import 'package:flutter_test/flutter_test.dart';
import 'package:kobza/core/model/one_letter.dart';
import 'package:kobza/features/game/screen/widgets/letter_box.dart';

Future<void> iDontSeeLetterMarkedAtUnguessed(
  WidgetTester tester,
  String letter,
) async {
  expect(
    find.byWidgetPredicate(
      (widget) =>
          widget is LetterBox &&
          widget.letter.letter == letter &&
          widget.letter.letterState == LetterState.wrong,
    ),
    findsNothing,
  );
}
