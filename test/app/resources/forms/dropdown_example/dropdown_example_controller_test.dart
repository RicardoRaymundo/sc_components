import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:sc_components/app/resources/forms/dropdown_example/dropdown_example_controller.dart';
import 'package:sc_components/app/app_module.dart';

void main() {
  initModule(AppModule());
  DropdownExampleController dropdownexample;

  setUp(() {
    dropdownexample = AppModule.to.get<DropdownExampleController>();
  });

  group('DropdownExampleController Test', () {
    test("First Test", () {
      expect(dropdownexample, isInstanceOf<DropdownExampleController>());
    });

    test("Set Value", () {
      expect(dropdownexample.value, equals(0));
      dropdownexample.increment();
      expect(dropdownexample.value, equals(1));
    });
  });
}
