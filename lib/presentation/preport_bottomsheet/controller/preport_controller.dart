import 'package:maak_app/core/app_export.dart';
import 'package:maak_app/presentation/preport_bottomsheet/models/preport_model.dart';

class PreportController extends GetxController {
  Rx<PreportModel> preportModelObj = PreportModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
