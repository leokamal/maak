import '../controller/find_doctor_controller.dart';
import 'package:get/get.dart';

class FindDoctorBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FindDoctorController());
  }
}
