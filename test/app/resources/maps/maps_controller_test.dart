import 'package:sc_components/app/resources/maps/maps_controller.dart';
import 'package:sc_components/app/resources/maps/maps_module.dart';
import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';


void main() {
  initModule(MapsModule());
  MapsController maps;

  setUp(() {
    maps = MapsModule.to.get<MapsController>();
  });

  group('MapsController Test', () {
    test("First Test", () {
      expect(maps, isInstanceOf<MapsController>());
    });

    test("Set Value", () {
      expect(maps.value, equals(0));
      maps.increment();
      expect(maps.value, equals(1));
    });
  });
}
