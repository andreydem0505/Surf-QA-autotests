import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:profile/assets/strings/personal_data_screen_strings.dart';
import 'package:profile/assets/strings/test_keys.dart';
import 'package:profile/features/profile/screens/personal_data_screen/personal_data_screen.dart';
import 'package:profile/features/profile/screens/personal_data_screen/widgets/text_form_field_widget.dart';

class PersonalDataTestScreen {
  /// Экран.
  final Finder trait = find.byType(PersonalDataScreen);

  /// Поле ввода фамилии
  final Finder surnameField = getTextFormByHint(PersonalDataScreenStrings.surnameHint);

  /// Поле ввода имени
  final Finder nameField = getTextFormByHint(PersonalDataScreenStrings.nameTitle);

  /// Поле ввода отчества
  final Finder secondName = getTextFormByHint(PersonalDataScreenStrings.secondNameHint);

  /// [InputDecorator] поля ввода фамилии
  final Finder surnameInputDecorator = getInputDecoratorByHint(PersonalDataScreenStrings.surnameHint);

  /// [InputDecorator] поля ввода имени
  final Finder nameInputDecorator = getInputDecoratorByHint(PersonalDataScreenStrings.nameTitle);

  /// [InputDecorator] поля ввода отчества
  final Finder secondNameInputDecorator = getInputDecoratorByHint(PersonalDataScreenStrings.secondNameHint);

  /// Поле выбора даты рождения
  final Finder dateOfBirthField = find.byKey(TestKeys.dateOfBirthField);

  /// [InputDecorator] поля выбора даты рождения
  final Finder dateOfBirthInputDecorator = getInputDecoratorByHint(PersonalDataScreenStrings.birthdayHint);

  /// Находит текстовую форму по тексту подсказки
  static Finder getTextFormByHint(String hint) => find.byWidgetPredicate((widget) => widget is TextFormFieldWidget && widget.hintText == hint);

  /// Находит [InputDecorator] по тексту подсказки
  static Finder getInputDecoratorByHint(String hint) => find.byWidgetPredicate((widget) => widget is InputDecorator && widget.decoration.hintText == hint);
}
