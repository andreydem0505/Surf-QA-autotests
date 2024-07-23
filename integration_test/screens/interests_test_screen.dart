import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:profile/assets/strings/test_keys.dart';
import 'package:profile/features/profile/screens/interests_screen/interests_screen.dart';

import '../datasets/datasets.dart';


class InterestsTestScreen {
  /// Экран выбора интересов
  final Finder interestsScreen = find.byType(InterestsScreen);

  /// Все проверяемые чекбоксы
  final List<Finder> checkboxes = datasets.profileInfo.interestsList
      .map(findCheckbox).toList();

  /// Находит чекбокс по тексту лейбла.
  /// Ключ чекбокса состоит из двух частей: префикса и текста лейбла.
  static Finder findCheckbox(String label) =>
      find.byKey(ValueKey('${TestKeys.checkboxKeyPrefix}$label'));
}
