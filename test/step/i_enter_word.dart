import 'package:flutter_test/flutter_test.dart';

import 'i_tap_text.dart';

Future<void> iEnterWord(WidgetTester tester, List<String> word) async {
  for (final l in word) {
    await iTapText(tester, l);
  }
}
