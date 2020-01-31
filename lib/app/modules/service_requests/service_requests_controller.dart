import 'package:mobx/mobx.dart';

part 'service_requests_controller.g.dart';

class ServiceRequestsController = _ServiceRequestsBase
    with _$ServiceRequestsController;

abstract class _ServiceRequestsBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
