import 'package:mobx/mobx.dart';

part 'service_requests_table_controller.g.dart';

class ServiceRequestsTableController = _ServiceRequestsTableBase with _$ServiceRequestsTableController;

abstract class _ServiceRequestsTableBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
