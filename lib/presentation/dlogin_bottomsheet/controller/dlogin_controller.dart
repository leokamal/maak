import 'package:maak_app/core/app_export.dart';
import 'package:maak_app/presentation/dlogin_bottomsheet/models/dlogin_model.dart';
import 'package:flutter/material.dart';

class DloginController extends GetxController {
  TextEditingController inputBGController = TextEditingController();

  TextEditingController inputBGOneController = TextEditingController();

  Rx<DloginModel> dloginModelObj = DloginModel().obs;

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
