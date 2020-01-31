import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:sc_components/app/modules/service_requests/service_requests_controller.dart';
import 'package:sc_components/app/modules/service_requests/service_requests_module.dart';

void main() {
  initModule(ServiceRequestsModule());
  ServiceRequestsController servicerequests;

  setUp(() {
    servicerequests = ServiceRequestsModule.to.get<ServiceRequestsController>();
  });

  group('ServiceRequestsController Test', () {
    test("First Test", () {
      expect(servicerequests, isInstanceOf<ServiceRequestsController>());
    });

    test("Set Value", () {
      expect(servicerequests.value, equals(0));
      servicerequests.increment();
      expect(servicerequests.value, equals(1));
    });
  });
}
