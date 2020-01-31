import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:sc_components/app/modules/service_requests/service_requests_page.dart';

main() {
  testWidgets('ServiceRequestsPage has title', (WidgetTester tester) async {
    await tester.pumpWidget(
        buildTestableWidget(ServiceRequestsPage(title: 'ServiceRequests')));
    final titleFinder = find.text('ServiceRequests');
    expect(titleFinder, findsOneWidget);
  });
}
