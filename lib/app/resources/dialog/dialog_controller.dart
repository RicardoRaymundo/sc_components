import 'package:mobx/mobx.dart';

part 'dialog_controller.g.dart';

class DialogController = _DialogBase with _$DialogController;

abstract class _DialogBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
