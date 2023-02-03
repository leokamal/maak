import 'package:maak_app/core/app_export.dart';
import 'package:maak_app/presentation/welcome_page_screen/models/welcome_page_model.dart';

class WelcomePageController extends GetxController {
  Rx<WelcomePageModel> welcomePageModelObj = WelcomePageModel().obs;

  @override
  void onReady() {
    super.onReady();
    Future.delayed(const Duration(milliseconds: 3000), () {
      Get.toNamed(AppRoutes.typtofloginScreen);
    });
  }

  @override
  void onClose() {
    super.onClose();
  }
}
