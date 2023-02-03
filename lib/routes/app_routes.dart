import 'package:maak_app/presentation/welcome_page_screen/welcome_page_screen.dart';
import 'package:maak_app/presentation/welcome_page_screen/binding/welcome_page_binding.dart';
import 'package:maak_app/presentation/typtoflogin_screen/typtoflogin_screen.dart';
import 'package:maak_app/presentation/typtoflogin_screen/binding/typtoflogin_binding.dart';
import 'package:maak_app/presentation/psignupone_screen/psignupone_screen.dart';
import 'package:maak_app/presentation/psignupone_screen/binding/psignupone_binding.dart';
import 'package:maak_app/presentation/psignuptwo_screen/psignuptwo_screen.dart';
import 'package:maak_app/presentation/psignuptwo_screen/binding/psignuptwo_binding.dart';
import 'package:maak_app/presentation/dsignup_screen/dsignup_screen.dart';
import 'package:maak_app/presentation/dsignup_screen/binding/dsignup_binding.dart';
import 'package:maak_app/presentation/patient_homepage_screen/patient_homepage_screen.dart';
import 'package:maak_app/presentation/patient_homepage_screen/binding/patient_homepage_binding.dart';
import 'package:maak_app/presentation/check_up_screen/check_up_screen.dart';
import 'package:maak_app/presentation/check_up_screen/binding/check_up_binding.dart';
import 'package:maak_app/presentation/doctor_homepage_screen/doctor_homepage_screen.dart';
import 'package:maak_app/presentation/doctor_homepage_screen/binding/doctor_homepage_binding.dart';
import 'package:maak_app/presentation/find_doctor_screen/find_doctor_screen.dart';
import 'package:maak_app/presentation/find_doctor_screen/binding/find_doctor_binding.dart';
import 'package:maak_app/presentation/pprofilepage_screen/pprofilepage_screen.dart';
import 'package:maak_app/presentation/pprofilepage_screen/binding/pprofilepage_binding.dart';
import 'package:maak_app/presentation/dprofilepage_screen/dprofilepage_screen.dart';
import 'package:maak_app/presentation/dprofilepage_screen/binding/dprofilepage_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String welcomePageScreen = '/welcome_page_screen';

  static const String typtofloginScreen = '/typtoflogin_screen';

  static const String psignuponeScreen = '/psignupone_screen';

  static const String psignuptwoScreen = '/psignuptwo_screen';

  static const String dsignupScreen = '/dsignup_screen';

  static const String patientHomepageScreen = '/patient_homepage_screen';

  static const String checkUpScreen = '/check_up_screen';

  static const String doctorHomepageScreen = '/doctor_homepage_screen';

  static const String findDoctorScreen = '/find_doctor_screen';

  static const String pprofilepageScreen = '/pprofilepage_screen';

  static const String dprofilepageScreen = '/dprofilepage_screen';

  static String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: welcomePageScreen,
      page: () => WelcomePageScreen(),
      bindings: [
        WelcomePageBinding(),
      ],
    ),
    GetPage(
      name: typtofloginScreen,
      page: () => TyptofloginScreen(),
      bindings: [
        TyptofloginBinding(),
      ],
    ),
    GetPage(
      name: psignuponeScreen,
      page: () => PsignuponeScreen(),
      bindings: [
        PsignuponeBinding(),
      ],
    ),
    GetPage(
      name: psignuptwoScreen,
      page: () => PsignuptwoScreen(),
      bindings: [
        PsignuptwoBinding(),
      ],
    ),
    GetPage(
      name: dsignupScreen,
      page: () => DsignupScreen(),
      bindings: [
        DsignupBinding(),
      ],
    ),
    GetPage(
      name: patientHomepageScreen,
      page: () => PatientHomepageScreen(),
      bindings: [
        PatientHomepageBinding(),
      ],
    ),
    GetPage(
      name: checkUpScreen,
      page: () => CheckUpScreen(),
      bindings: [
        CheckUpBinding(),
      ],
    ),
    GetPage(
      name: doctorHomepageScreen,
      page: () => DoctorHomepageScreen(),
      bindings: [
        DoctorHomepageBinding(),
      ],
    ),
    GetPage(
      name: findDoctorScreen,
      page: () => FindDoctorScreen(),
      bindings: [
        FindDoctorBinding(),
      ],
    ),
    GetPage(
      name: pprofilepageScreen,
      page: () => PprofilepageScreen(),
      bindings: [
        PprofilepageBinding(),
      ],
    ),
    GetPage(
      name: dprofilepageScreen,
      page: () => DprofilepageScreen(),
      bindings: [
        DprofilepageBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => WelcomePageScreen(),
      bindings: [
        WelcomePageBinding(),
      ],
    )
  ];
}
