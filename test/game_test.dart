// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_import, directives_ordering

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import './step/the_app_is_running.dart';
import './step/i_tap_text.dart';
import './step/i_wait_second.dart';
import './step/i_see_text.dart';
import './step/i_see_text_times.dart';
import './step/i_enter_word.dart';
import './step/i_tap_icon.dart';
import './step/i_see_coloredbox_with_color.dart';
import './step/i_see_letter_marked_at_guessed.dart';

void main() {
  Future<void> bddSetUp(WidgetTester tester) async {
    await theAppIsRunning(tester);
    await iTapText(tester, 'daily');
    await iWaitSecond(tester, 1);
  }
  group('''Game''', () {
    testWidgets('''User tap K key''', (tester) async {
      await bddSetUp(tester);
      await iSeeText(tester, 'К');
      await iTapText(tester, 'К');
      await iSeeTextTimes(tester, 'К', 2);
    });
    testWidgets('''User guessed the letter В''', (tester) async {
      await bddSetUp(tester);
      await iEnterWord(tester, ['В', 'І', 'Т', 'Е', 'Р']);
      await iTapIcon(tester, Icons.keyboard_return);
      await iSeeColoredboxWithColor(tester, Colors.green);
      await iSeeLetterMarkedAtGuessed(tester, 'В');
    });
    testWidgets('''User canceled letter entry''', (tester) async {
      await bddSetUp(tester);
      await iTapText(tester, 'К');
      await iTapIcon(tester, Icons.backspace_outlined);
      await iSeeTextTimes(tester, 'К', 1);
    });
  });
}
