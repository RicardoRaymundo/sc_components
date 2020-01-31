import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:sc_components/app/resources/forms/occurrence_details/occurrence_details_controller.dart';
import 'package:sc_components/app/app_module.dart';

void main() {
  initModule(AppModule());
  OccurrenceDetailsController occurrencedetails;

  setUp(() {
    occurrencedetails = AppModule.to.get<OccurrenceDetailsController>();
  });

  group('OccurrenceDetailsController Test', () {
    test("First Test", () {
      expect(occurrencedetails, isInstanceOf<OccurrenceDetailsController>());
    });

    test("Set Value", () {
      expect(occurrencedetails.value, equals(0));
      occurrencedetails.increment();
      expect(occurrencedetails.value, equals(1));
    });
  });
}
