import 'package:maak_app/core/app_export.dart';
import 'package:maak_app/presentation/pprofilepage_screen/models/pprofilepage_model.dart';
import 'package:flutter/material.dart';

class PprofilepageController extends GetxController {
  TextEditingController inputBGController = TextEditingController();

  TextEditingController inputBGOneController = TextEditingController();

  TextEditingController inputBGTwoController = TextEditingController();

  TextEditingController inputBGFourController = TextEditingController();

  Rx<PprofilepageModel> pprofilepageModelObj = PprofilepageModel().obs;

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
    inputBGFourController.dispose();
  }
}
