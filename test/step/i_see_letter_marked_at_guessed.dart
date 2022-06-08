import 'package:flutter_test/flutter_test.dart';
import 'package:kobza/core/model/one_letter.dart';
import 'package:kobza/features/game/screen/widgets/letter_box.dart';

Future<void> iSeeLetterMarkedAtGuessed(
  WidgetTester tester,
  String letter,
) async {
  // const colorGuessed = Colors.green;

  // final childWidget = Text(letter);
  // await tester.pumpWidget(Container(
  //   child: childWidget,
  // ),);
  // expect(find.byWidget(childWidget), findsWidgets);

  expect(
    find.byWidgetPredicate(
      (widget) =>
          widget is LetterBox &&
          widget.letter.letter == letter &&
          widget.letter.letterState == LetterState.correctly,
    ),
    findsWidgets,
  );

  // expect(
  //   find.byWidgetPredicate(
  //     (widget) =>
  //         widget is Container &&
  //         widget.child == Text(letter) &&
  //         widget.color == colorGuessed,
  //   ),
  //   findsWidgets,
  // );
}
