// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_import, directives_ordering

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import './step/the_app_is_running.dart';
import './step/i_see_text.dart';
import './step/i_tap_text.dart';
import './step/i_wait_second.dart';
import './step/i_see_icon.dart';
import './step/i_see_text_times.dart';
import './step/i_enter_word.dart';
import './step/i_see_coloredbox_with_color.dart';

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
      await iWaitSecond(tester, 1);
      await iSeeIcon(tester, Icons.close);
    });
    testWidgets('''User tap K key''', (tester) async {
      await bddSetUp(tester);
      await iTapText(tester, 'daily');
      await iWaitSecond(tester, 1);
      await iSeeText(tester, 'К');
      await iTapText(tester, 'К');
      await iSeeTextTimes(tester, 'К', 2);
    });
    testWidgets('''User guessed the letter K''', (tester) async {
      await bddSetUp(tester);
      await iTapText(tester, 'daily');
      await iWaitSecond(tester, 1);
      await iEnterWord(tester, ['К', 'О', 'Л', 'І', 'Р']);
      await iTapText(tester, '>');
      await iSeeColoredboxWithColor(tester, Colors.green);
    });
  });
}
