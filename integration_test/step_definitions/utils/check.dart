import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:profile/features/profile/screens/personal_data_screen/widgets/text_form_field_widget.dart';
import 'package:surf_flutter_test/surf_flutter_test.dart';


class Check {
  Future<void> hasElement(WidgetTester tester, Finder finder) async {
    await tester.pumpUntilVisible(finder);
    expect(finder, findsOneWidget);
  }

  /// Проверяет, что содержимое текстовой формы [finder] равно [target]
  Future<void> textFormContent(WidgetTester tester, Finder finder, String target) async {
    await tester.pumpUntilVisible(finder);
    final value = tester.widget<TextFormField>(finder).controller?.text;
    expect(value, target);
  }

  /// Проверяет, что содержимое текстовой формы [finder] равно [target]
  Future<void> textFormWidgetContent(WidgetTester tester, Finder finder, String target) async {
    await tester.pumpUntilVisible(finder);
    final value = tester.widget<TextFormFieldWidget>(finder).controller?.text;
    expect(value, target);
  }
}

final check = Check();