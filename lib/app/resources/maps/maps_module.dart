import 'package:sc_components/app/resources/maps/maps_controller.dart';
import 'package:sc_components/app/resources/maps/maps_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class MapsModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => MapsController()),
      ];

  @override
  List<Router> get routers => [];

  @override
  Widget get bootstrap => MapsWidget();

  static Inject get to => Inject<MapsModule>.of();
}
