import 'package:mobx/mobx.dart';

part 'occurrence_details_controller.g.dart';

class OccurrenceDetailsController = _OccurrenceDetailsBase
    with _$OccurrenceDetailsController;

abstract class _OccurrenceDetailsBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }

  @observable
  int poleNumber;

  @action
  changePole(int newPoleNumber) {
    print('# Poste: $newPoleNumber');
    poleNumber = newPoleNumber;
    return poleNumber;
  }
}
