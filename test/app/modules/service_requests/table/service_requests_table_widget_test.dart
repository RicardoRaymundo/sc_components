import 'package:sc_components/app/modules/service_requests/table/service_requests_table_widget.dart';
import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  testWidgets('ServiceRequestsTableWidget has message', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(ServiceRequestsTableWidget()));
    final textFinder = find.text('ServiceRequestsTable');
    expect(textFinder, findsOneWidget);
  });
}
