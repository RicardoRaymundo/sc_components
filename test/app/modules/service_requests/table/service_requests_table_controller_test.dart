import 'package:sc_components/app/modules/service_requests/service_requests_module.dart';
import 'package:sc_components/app/modules/service_requests/table/service_requests_table_controller.dart';
import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  initModule(ServiceRequestsModule());
  ServiceRequestsTableController servicerequeststable;

  setUp(() {
    servicerequeststable = ServiceRequestsModule.to.get<ServiceRequestsTableController>();
  });

  group('ServiceRequestsTableController Test', () {
    test("First Test", () {
      expect(servicerequeststable, isInstanceOf<ServiceRequestsTableController>());
    });

    test("Set Value", () {
      expect(servicerequeststable.value, equals(0));
      servicerequeststable.increment();
      expect(servicerequeststable.value, equals(1));
    });
  });
}
