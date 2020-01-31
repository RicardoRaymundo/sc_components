import 'package:sc_components/app/resources/dialog/dialog_controller.dart';
import 'package:sc_components/app/resources/dialog/dialog_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class DialogModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => DialogController()),
      ];

  @override
  List<Router> get routers => [];

  @override
  Widget get bootstrap => DialogWidget();

  static Inject get to => Inject<DialogModule>.of();
}
