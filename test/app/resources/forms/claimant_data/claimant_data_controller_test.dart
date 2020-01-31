import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:sc_components/app/resources/forms/claimant_data/claimant_data_controller.dart';
import 'package:sc_components/app/app_module.dart';

void main() {
  initModule(AppModule());
  ClaimantDataController claimantdata;

  setUp(() {
    claimantdata = AppModule.to.get<ClaimantDataController>();
  });

  group('ClaimantDataController Test', () {
    test("First Test", () {
      expect(claimantdata, isInstanceOf<ClaimantDataController>());
    });
  });
}
