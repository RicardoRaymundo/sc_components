import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:sc_components/app/resources/forms/dropdown_example/dropdown_example_page.dart';

main() {
  testWidgets('DropdownExamplePage has title', (WidgetTester tester) async {
    await tester.pumpWidget(
        buildTestableWidget(DropdownExamplePage(title: 'DropdownExample')));
    final titleFinder = find.text('DropdownExample');
    expect(titleFinder, findsOneWidget);
  });
}
