import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:sc_components/app/resources/forms/occurrence_local/occurrence_local_controller.dart';
import 'package:sc_components/app/app_module.dart';

void main() {
  initModule(AppModule());
  OccurrenceLocalController occurrencelocal;

  setUp(() {
    occurrencelocal = AppModule.to.get<OccurrenceLocalController>();
  });

  group('OccurrenceLocalController Test', () {
    test("First Test", () {
      expect(occurrencelocal, isInstanceOf<OccurrenceLocalController>());
    });

    test("Set Value", () {
      expect(occurrencelocal.value, equals(0));
      occurrencelocal.increment();
      expect(occurrencelocal.value, equals(1));
    });
  });
}
