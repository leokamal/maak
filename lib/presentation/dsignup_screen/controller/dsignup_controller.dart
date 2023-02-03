import 'package:maak_app/core/app_export.dart';
import 'package:maak_app/presentation/dsignup_screen/models/dsignup_model.dart';
import 'package:flutter/material.dart';

class DsignupController extends GetxController {
  Rx<DsignupModel> dsignupModelObj = DsignupModel().obs;
  TextEditingController inputBGController = TextEditingController();

  TextEditingController inputBGOneController = TextEditingController();

  TextEditingController inputBGTwoController = TextEditingController();

  TextEditingController inputBG3Controller = TextEditingController();

  TextEditingController inputBGFourController = TextEditingController();

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    inputBGController.dispose();
    inputBGOneController.dispose();
    inputBGTwoController.dispose();
    inputBG3Controller.dispose();
    inputBGFourController.dispose();
  }
}
