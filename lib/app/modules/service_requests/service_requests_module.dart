import 'package:sc_components/app/modules/service_requests/info/service_requests_info_controller.dart';
import 'package:sc_components/app/modules/service_requests/service_requests_controller.dart';
import 'package:sc_components/app/modules/service_requests/service_requests_page.dart';
import 'package:sc_components/app/modules/service_requests/table/service_requests_table_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:sc_components/app/resources/forms/dropdown_example/dropdown_example_page.dart';

class ServiceRequestsModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => ServiceRequestsInfoController()),
        Bind((i) => ServiceRequestsTableController()),
        Bind((i) => ServiceRequestsController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => ServiceRequestsPage()),
        Router('/dropdown-example', child: (_, args) => DropdownExamplePage()),
      ];

  static Inject get to => Inject<ServiceRequestsModule>.of();
}
