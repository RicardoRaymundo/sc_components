import 'package:sc_components/app/resources/forms/occurrence_local/occurrence_local_controller.dart';
import 'package:sc_components/app/resources/forms/occurrence_details/occurrence_details_controller.dart';
import 'package:sc_components/app/resources/forms/dropdown_example/dropdown_example_controller.dart';
import 'package:sc_components/app/resources/forms/claimant_data/claimant_data_controller.dart';
import 'package:sc_components/app/app_controller.dart';
import 'package:sc_components/app/app_widget.dart';
import 'package:sc_components/app/modules/service_requests/service_requests_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => OccurrenceLocalController()),
        Bind((i) => OccurrenceDetailsController()),
        Bind((i) => DropdownExampleController()),
        Bind((i) => ClaimantDataController()),
        Bind((i) => AppController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', module: ServiceRequestsModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
