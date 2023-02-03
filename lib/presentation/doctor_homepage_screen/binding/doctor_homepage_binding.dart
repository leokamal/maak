import '../controller/doctor_homepage_controller.dart';
import 'package:get/get.dart';

class DoctorHomepageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DoctorHomepageController());
  }
}
