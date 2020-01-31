import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:sc_components/app/resources/forms/claimant_data/claimant_data_widget.dart';

main() {
  testWidgets('ClaimantDataWidget has message', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(ClaimantDataWidget()));
    final textFinder = find.text('ClaimantData');
    expect(textFinder, findsOneWidget);
  });
}
