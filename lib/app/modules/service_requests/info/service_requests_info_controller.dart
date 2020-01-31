import 'package:mobx/mobx.dart';

part 'service_requests_info_controller.g.dart';

class ServiceRequestsInfoController = _ServiceRequestsInfoBase
    with _$ServiceRequestsInfoController;

abstract class _ServiceRequestsInfoBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
