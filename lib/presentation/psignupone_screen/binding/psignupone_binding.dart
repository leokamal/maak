import '../controller/psignupone_controller.dart';
import 'package:get/get.dart';

class PsignuponeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PsignuponeController());
  }
}
