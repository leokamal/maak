import '../controller/dprofilepage_controller.dart';
import 'package:get/get.dart';

class DprofilepageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DprofilepageController());
  }
}
