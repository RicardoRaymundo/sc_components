import 'package:sc_components/app/modules/service_requests/info/service_requests_info_controller.dart';
import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:sc_components/app/modules/service_requests/service_requests_module.dart';

void main() {
  initModule(ServiceRequestsModule());
  ServiceRequestsInfoController servicerequestsinfo;

  setUp(() {
    servicerequestsinfo =
        ServiceRequestsModule.to.get<ServiceRequestsInfoController>();
  });

  group('ServiceRequestsInfoController Test', () {
    test("First Test", () {
      expect(
          servicerequestsinfo, isInstanceOf<ServiceRequestsInfoController>());
    });

    test("Set Value", () {
      expect(servicerequestsinfo.value, equals(0));
      servicerequestsinfo.increment();
      expect(servicerequestsinfo.value, equals(1));
    });
  });
}
