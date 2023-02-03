import 'package:maak_app/core/app_export.dart';
import 'package:maak_app/presentation/plogin_bottomsheet/models/plogin_model.dart';
import 'package:flutter/material.dart';
class PloginController extends GetxController {
  Rx<PloginModel> ploginModelObj = PloginModel().obs;
  TextEditingController inputBGController = TextEditingController();

  TextEditingController inputBGOneController = TextEditingController();

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    inputBGController.dispose();
    inputBGOneController.dispose();
  }
}
