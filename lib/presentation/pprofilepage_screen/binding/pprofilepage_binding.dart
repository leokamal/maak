import '../controller/pprofilepage_controller.dart';
import 'package:get/get.dart';

class PprofilepageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PprofilepageController());
  }
}
