import 'package:flutter_test/flutter_test.dart';

Future<void> iSeeTextTimes(WidgetTester tester, String text, int count) async {
  expect(find.text(text), findsNWidgets(count));
}
