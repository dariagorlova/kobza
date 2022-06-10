import 'package:flutter_test/flutter_test.dart';

Future<void> iDontSeeTextTimes(
  WidgetTester tester,
  String text,
  int count,
) async {
  expect(find.text(text), findsNWidgets(count)); //findsNothing
}
