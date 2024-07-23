import 'package:flutter/material.dart';
import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:surf_flutter_test/surf_flutter_test.dart';

import '../test_screen_library.dart';
import 'utils/check.dart';

final interestsStepDefinitions = [
  testerThen<FlutterWidgetTesterWorld>(
    RegExp(r'Я вижу экран выбора интересов$'),
        (context, tester) async {
      await check.hasElement(tester, interestsTestScreen.interestsScreen);
    },
  ),
  testerWhen<FlutterWidgetTesterWorld>(
    RegExp(r'Я указываю интересы$'),
        (context, tester) async {
      for (final finder in interestsTestScreen.checkboxes) {
        await tester.scrollUntilVisible(finder, 100);
        await tester.implicitTap(finder);
      }
    },
  ),
  testerThen<FlutterWidgetTesterWorld>(
    RegExp(r'Я вижу указанные интересы$'),
        (context, tester) async {
      for (final finder in interestsTestScreen.checkboxes) {
        await tester.scrollUntilVisible(finder, 100);
        expect(true, tester.firstWidget<Checkbox>(finder).value);
      }
    },
  ),
];
