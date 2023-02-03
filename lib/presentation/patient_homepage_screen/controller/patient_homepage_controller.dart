import 'package:maak_app/core/app_export.dart';
import 'package:maak_app/presentation/patient_homepage_screen/models/patient_homepage_model.dart';

class PatientHomepageController extends GetxController {
  Rx<PatientHomepageModel> patientHomepageModelObj = PatientHomepageModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
