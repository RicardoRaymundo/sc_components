import 'package:sc_components/app/modules/service_requests/info/service_requests_info_widget.dart';
import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  testWidgets('ServiceRequestsInfoWidget has message', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(ServiceRequestsInfoWidget()));
    final textFinder = find.text('ServiceRequestsInfo');
    expect(textFinder, findsOneWidget);
  });
}
