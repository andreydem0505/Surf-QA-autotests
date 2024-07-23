import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:surf_flutter_test/surf_flutter_test.dart';

import '../datasets/datasets.dart';
import '../test_screen_library.dart';
import 'utils/check.dart';

final placeOfResidenceStepDefinitions = [
  testerThen<FlutterWidgetTesterWorld>(
    RegExp(r'Я вижу экран заполнения города$'),
        (context, tester) async {
      await check.hasElement(tester, placeOfResidenceTestScreen.residenceScreen);
    },
  ),
  testerThen<FlutterWidgetTesterWorld>(
    RegExp(r'Я выбираю город из списка$'),
        (context, tester) async {
      await tester.implicitEnterText(placeOfResidenceTestScreen.residenceField, datasets.profileInfo.city);
      await tester.implicitTap(placeOfResidenceTestScreen.listOfCities.first);
    },
  ),
  testerThen<FlutterWidgetTesterWorld>(
    RegExp(r'Я вижу указанный город$'),
        (context, tester) async {
      await check.textFormContent(tester, placeOfResidenceTestScreen.residenceField, datasets.profileInfo.city);
    },
  ),
];
