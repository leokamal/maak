import 'package:maak_app/core/app_export.dart';
import 'package:maak_app/presentation/find_doctor_screen/models/find_doctor_model.dart';

class FindDoctorController extends GetxController {
  Rx<FindDoctorModel> findDoctorModelObj = FindDoctorModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
