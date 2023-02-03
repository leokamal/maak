import '../controller/patient_homepage_controller.dart';
import 'package:get/get.dart';

class PatientHomepageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PatientHomepageController());
  }
}
