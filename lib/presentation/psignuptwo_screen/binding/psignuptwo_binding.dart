import '../controller/psignuptwo_controller.dart';
import 'package:get/get.dart';

class PsignuptwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PsignuptwoController());
  }
}
