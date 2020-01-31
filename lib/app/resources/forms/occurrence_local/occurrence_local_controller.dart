import 'package:mobx/mobx.dart';

part 'occurrence_local_controller.g.dart';

class OccurrenceLocalController = _OccurrenceLocalBase
    with _$OccurrenceLocalController;

abstract class _OccurrenceLocalBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
