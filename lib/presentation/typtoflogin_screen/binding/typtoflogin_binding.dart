import '../controller/typtoflogin_controller.dart';
import 'package:get/get.dart';

class TyptofloginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TyptofloginController());
  }
}
