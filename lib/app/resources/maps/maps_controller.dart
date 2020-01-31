import 'package:mobx/mobx.dart';

part 'maps_controller.g.dart';

class MapsController = _MapsBase with _$MapsController;

abstract class _MapsBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
