import 'package:flutter/material.dart';
import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:surf_flutter_test/surf_flutter_test.dart';

import '../datasets/datasets.dart';
import '../test_screen_library.dart';
import 'utils/check.dart';


final personalDataStepDefinitions = [
  testerWhen<FlutterWidgetTesterWorld>(
    RegExp(r'Я указываю фамилию$'),
    (context, tester) async {
      await tester.implicitEnterText(personalDataTestScreen.surnameField, datasets.profileInfo.surname);
    },
  ),
  testerWhen<FlutterWidgetTesterWorld>(
    RegExp(r'Я стираю фамилию$'),
        (context, tester) async {
      await tester.implicitEnterText(personalDataTestScreen.surnameField, '');
    },
  ),
  testerWhen<FlutterWidgetTesterWorld>(
    RegExp(r'Я указываю дату рождения$'),
    (context, tester) async {
      final calendar =
          tester.widget<TextFormField>(personalDataTestScreen.dateOfBirthField);
      calendar.controller?.text = datasets.profileInfo.dateOfBirth;
    },
  ),
  testerWhen<FlutterWidgetTesterWorld>(
    RegExp(r'Я указываю имя$'),
        (context, tester) async {
      await tester.implicitEnterText(personalDataTestScreen.nameField, datasets.profileInfo.name);
    },
  ),
  testerWhen<FlutterWidgetTesterWorld>(
    RegExp(r'Я стираю имя$'),
        (context, tester) async {
      await tester.implicitEnterText(personalDataTestScreen.nameField, '');
    },
  ),
  testerWhen<FlutterWidgetTesterWorld>(
    RegExp(r'Я указываю отчество$'),
        (context, tester) async {
      await tester.implicitEnterText(personalDataTestScreen.secondName, datasets.profileInfo.secondName);
    },
  ),
  testerThen<FlutterWidgetTesterWorld>(
    RegExp(r'Я вижу указанные ФИО$'),
        (context, tester) async {
      await check.textFormWidgetContent(tester, personalDataTestScreen.nameField, datasets.profileInfo.name);
      await check.textFormWidgetContent(tester, personalDataTestScreen.surnameField, datasets.profileInfo.surname);
      await check.textFormWidgetContent(tester, personalDataTestScreen.secondName, datasets.profileInfo.secondName);
    },
  ),
  testerThen<FlutterWidgetTesterWorld>(
    RegExp(r'Я вижу указанную дату рождения$'),
        (context, tester) async {
      await check.textFormContent(tester, personalDataTestScreen.dateOfBirthField, datasets.profileInfo.dateOfBirth);
    },
  ),
  testerThen<FlutterWidgetTesterWorld>(
    RegExp(r'Я вижу предупреждение в поле ввода фамилии$'),
        (context, tester) async {
      final errorText = tester.widget<InputDecorator>(personalDataTestScreen.surnameInputDecorator).decoration.errorText;
      expect('This field must be filled', errorText);
    },
  ),
  testerThen<FlutterWidgetTesterWorld>(
    RegExp(r'Я вижу предупреждение в поле ввода имени$'),
        (context, tester) async {
      final errorText = tester.widget<InputDecorator>(personalDataTestScreen.nameInputDecorator).decoration.errorText;
      expect('This field must be filled', errorText);
    },
  ),
  testerThen<FlutterWidgetTesterWorld>(
    RegExp(r'Я вижу предупреждение в поле выбора даты рождения$'),
        (context, tester) async {
      final errorText = tester.widget<InputDecorator>(personalDataTestScreen.dateOfBirthInputDecorator).decoration.errorText;
      expect('This field must be filled', errorText);
    },
  ),
];
