import 'package:flutter_test/flutter_test.dart';

Future<void> iWaitSecond(WidgetTester tester, int seconds) async {
  await tester.pump(Duration(seconds: seconds));
  //await tester.pumpAndSettle();
}
