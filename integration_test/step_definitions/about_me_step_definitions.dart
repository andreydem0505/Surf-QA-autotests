import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:surf_flutter_test/surf_flutter_test.dart';

import '../datasets/datasets.dart';
import '../test_screen_library.dart';
import 'utils/check.dart';

final aboutMeStepDefinitions = [
  testerThen<FlutterWidgetTesterWorld>(
    RegExp(r'Я вижу экран данных о себе$'),
        (context, tester) async {
      await check.hasElement(tester, aboutMeTestScreen.aboutMeScreen);
    },
  ),
  testerThen<FlutterWidgetTesterWorld>(
    RegExp(r'Я указываю информацию о себе и сохраняю данные$'),
        (context, tester) async {
      await tester.implicitEnterText(aboutMeTestScreen.inputInfo, datasets.profileInfo.about);
      await tester.implicitTap(aboutMeTestScreen.saveButton);
    },
  ),
  testerThen<FlutterWidgetTesterWorld>(
    RegExp(r'Я вижу указанную информацию о себе$'),
        (context, tester) async {
      await check.textFormContent(tester, aboutMeTestScreen.inputInfo, datasets.profileInfo.about);
    },
  ),
];
