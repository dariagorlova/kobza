// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_import, directives_ordering

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import './step/the_app_is_running.dart';
import './step/i_see_text.dart';
import './step/i_tap_text.dart';
import './step/i_wait.dart';
import './step/i_dont_see_text.dart';
import './step/i_see_icon.dart';

void main() {
  Future<void> bddSetUp(WidgetTester tester) async {
    await theAppIsRunning(tester);
  }
  group('''Start of application''', () {
    testWidgets('''As a User I want to see buttons with different options''', (tester) async {
      await bddSetUp(tester);
      await iSeeText(tester, 'daily');
      await iSeeText(tester, 'random');
    });
    testWidgets('''User tap button EveryDay''', (tester) async {
      await bddSetUp(tester);
      await iTapText(tester, 'daily');
      await iWait(tester);
      await iDontSeeText(tester, 'daily');
      await iSeeIcon(tester, Icons.backspace_rounded);
      await iSeeText(tester, 'J');
    });
  });
}
