import 'package:maak_app/core/app_export.dart';
import 'package:maak_app/presentation/psignupone_screen/models/psignupone_model.dart';
import 'package:flutter/material.dart';

class PsignuponeController extends GetxController {
  Rx<PsignuponeModel> psignuponeModelObj = PsignuponeModel().obs;
  TextEditingController inputBGController = TextEditingController();

  TextEditingController inputBGOneController = TextEditingController();

  TextEditingController inputBGTwoController = TextEditingController();
  TextEditingController inputBG3Controller = TextEditingController();
  TextEditingController inputBGFourController = TextEditingController();
  TextEditingController inputBG5Controller = TextEditingController();

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
    inputBG5Controller.dispose();
  }
}
