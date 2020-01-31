import 'package:sc_components/app/resources/dialog/dialog_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';


main() {
  testWidgets('DialogWidget has message', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(DialogWidget()));
    final textFinder = find.text('Dialog');
    expect(textFinder, findsOneWidget);
  });
}
