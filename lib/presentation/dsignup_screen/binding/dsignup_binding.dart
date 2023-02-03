import '../controller/dsignup_controller.dart';
import 'package:get/get.dart';

class DsignupBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DsignupController());
  }
}
