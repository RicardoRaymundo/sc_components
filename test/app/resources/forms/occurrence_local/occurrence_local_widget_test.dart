import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:sc_components/app/resources/forms/occurrence_local/occurrence_local_widget.dart';

main() {
  testWidgets('OccurrenceLocalWidget has message', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(OccurrenceLocalWidget()));
    final textFinder = find.text('OccurrenceLocal');
    expect(textFinder, findsOneWidget);
  });
}
