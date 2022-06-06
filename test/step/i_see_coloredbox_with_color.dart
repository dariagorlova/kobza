import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

Future<void> iSeeColoredboxWithColor(WidgetTester tester, Color color) async {
  expect(
    find.byWidgetPredicate(
      (widget) => widget is ColoredBox && widget.color == color,
    ),
    findsWidgets,
  );
}
