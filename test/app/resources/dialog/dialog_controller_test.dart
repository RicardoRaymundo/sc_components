import 'package:sc_components/app/resources/dialog/dialog_controller.dart';
import 'package:sc_components/app/resources/dialog/dialog_module.dart';
import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  initModule(DialogModule());
  DialogController dialog;

  setUp(() {
    dialog = DialogModule.to.get<DialogController>();
  });

  group('DialogController Test', () {
    test("First Test", () {
      expect(dialog, isInstanceOf<DialogController>());
    });

    test("Set Value", () {
      expect(dialog.value, equals(0));
      dialog.increment();
      expect(dialog.value, equals(1));
    });
  });
}
