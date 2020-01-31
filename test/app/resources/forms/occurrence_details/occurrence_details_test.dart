import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:sc_components/app/resources/forms/occurrence_details/occurrence_details.dart';

main() {
  testWidgets('OccurrenceDetailsWidget has message',
      (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(OccurrenceDetails()));
    final textFinder = find.text('OccurrenceDetails');
    expect(textFinder, findsOneWidget);
  });
}
