import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:profile/features/profile/screens/about_me_screen/about_me_screen.dart';


class AboutMeTestScreen {
  /// Экран данных о себе
  final Finder aboutMeScreen = find.byType(AboutMeScreen);

  /// Поле ввода информации о себе
  final Finder inputInfo = find.byType(TextFormField);

  /// Кнопка сохранения
  final Finder saveButton = find.byType(ElevatedButton);
}
