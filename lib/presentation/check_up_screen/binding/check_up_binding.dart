import '../controller/check_up_controller.dart';
import 'package:get/get.dart';

class CheckUpBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CheckUpController());
  }
}
