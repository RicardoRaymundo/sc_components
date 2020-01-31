import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';

part 'claimant_data_controller.g.dart';

class ClaimantDataController = _ClaimantDataBase with _$ClaimantDataController;

abstract class _ClaimantDataBase with Store {

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @observable
  String claimantName = '';
  @action
  changeClaimantName(String newName) {
    print('Claimant name: $claimantName');
    claimantName = newName;
    return claimantName;
  }

  @observable
  String email = '';
  @action
  changeEmail(String newEmail) {
    print('Email: $email');
    email = newEmail;
    return email;
  }

  @observable
  String telephone = '';
  @action
  changeTelephone(String newTelephone) {
    print('Telephone: $telephone');
    telephone = newTelephone;
    return telephone;
  }

  @observable
  bool activeDddValidation = false;

  /// DDD DropDown
  @observable
  String ddd = '';

  @observable
  String dddType;

  @action
  void updateDDD(String newValue) {
    ddd = newValue.trim();
    dddType = newValue.trim();
    print('DDD: $ddd');
    if (this.activeDddValidation ||
        this.ddd.isEmpty) {
      this.formKey.currentState.validate();
    }
  }
  Map<String, String> dddOptions = {
    "Selec": "",
    "BA": "77",
    "SP": "11",
    "RJ ": "21",
    "ES": "27",
    "MG ": "31",
    "PR": "41",
  };

  /// ORIGIN DropDown
  @observable
  bool activeOriginValidation = false;

  @observable
  String origin = '';

  @observable
  String originType;

  @action
  void updateOrigin(String newValue) {
    origin = newValue.trim();
    originType = newValue.trim();
    print('Origin: $origin');
    if (this.activeOriginValidation ||
        this.origin.isEmpty) {
      this.formKey.currentState.validate();
    }
  }
  Map<String, String> originOptions = {
    "Selec": "",
    "Salvador": "Salvador",
    "São Paulo": "São Paulo",
    "Rio de Janeiro ": "Rio de Janeiro",
    "Vitória": "Vitória",
    "Belo Horizonte ": "Belo Horizonte",
    "Curitiba": "Curitiba",
  };
}
