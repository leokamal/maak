import 'package:maak_app/core/app_export.dart';
import 'package:maak_app/presentation/check_up_screen/models/check_up_model.dart';

class CheckUpController extends GetxController {
  Rx<CheckUpModel> checkUpModelObj = CheckUpModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
