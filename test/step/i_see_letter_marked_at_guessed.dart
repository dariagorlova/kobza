import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

Future<void> iSeeLetterMarkedAtGuessed(
  WidgetTester tester,
  String letter,
) async {
  const colorGuessed = Colors.green;
  expect(
    find.byWidgetPredicate(
      (widget) =>
          widget is Container &&
          widget.child == Text(letter) &&
          widget.color == colorGuessed,
    ),
    findsWidgets,
  );
}
