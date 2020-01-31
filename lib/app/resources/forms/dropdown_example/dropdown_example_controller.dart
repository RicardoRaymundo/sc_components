import 'package:mobx/mobx.dart';

part 'dropdown_example_controller.g.dart';

class DropdownExampleController = _DropdownExampleBase
    with _$DropdownExampleController;

abstract class _DropdownExampleBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
