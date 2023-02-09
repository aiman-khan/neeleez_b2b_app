import 'package:get/get.dart';

import 'package:neeleez_b2b/app/modules/home/bindings/home_binding.dart';
import 'package:neeleez_b2b/app/modules/home/views/home_view.dart';
import 'package:neeleez_b2b/app/modules/page3_job_notification/bindings/page3_job_notification_binding.dart';
import 'package:neeleez_b2b/app/modules/page3_job_notification/views/page3_job_notification_view.dart';
import 'package:neeleez_b2b/app/modules/page2_sign_in/bindings/sign_in_binding.dart';
import 'package:neeleez_b2b/app/modules/page2_sign_in/views/sign_in_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SIGN_IN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SIGN_IN,
      page: () => SignInView(),
      binding: SignInBinding(),
    ),
    GetPage(
      name: _Paths.PAGE3_JOB_NOTIFICATION,
      page: () => Page3JobNotificationView(),
      binding: Page3JobNotificationBinding(),
    ),
  ];
}
