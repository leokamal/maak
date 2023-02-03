import 'package:maak_app/core/app_export.dart';
import 'package:maak_app/presentation/dprofilepage_screen/models/dprofilepage_model.dart';
import 'package:flutter/material.dart';

class DprofilepageController extends GetxController {
  TextEditingController inputBGController = TextEditingController();

  TextEditingController inputBGOneController = TextEditingController();

  TextEditingController inputBGTwoController = TextEditingController();

  TextEditingController inputBGFourController = TextEditingController();

  Rx<DprofilepageModel> dprofilepageModelObj = DprofilepageModel().obs;

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
