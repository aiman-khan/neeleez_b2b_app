import 'package:get/get.dart';

import 'package:neeleez_b2b/app/modules/home/bindings/home_binding.dart';
import 'package:neeleez_b2b/app/modules/home/views/home_view.dart';
import 'package:neeleez_b2b/app/modules/page2_sign_in/bindings/sign_in_binding.dart';
import 'package:neeleez_b2b/app/modules/page2_sign_in/views/sign_in_view.dart';
import 'package:neeleez_b2b/app/modules/page3_job_notification/bindings/page3_job_notification_binding.dart';
import 'package:neeleez_b2b/app/modules/page3_job_notification/views/page3_job_notification_view.dart';
import 'package:neeleez_b2b/app/modules/page4_jobs_list/bindings/page4_jobs_list_binding.dart';
import 'package:neeleez_b2b/app/modules/page4_jobs_list/views/page4_jobs_list_view.dart';
import 'package:neeleez_b2b/app/modules/page9_accept_scheduled_job/bindings/page9_accept_scheduled_job_binding.dart';
import 'package:neeleez_b2b/app/modules/page9_accept_scheduled_job/views/page9_accept_scheduled_job_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.PAGE4_JOBS_LIST;

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
    GetPage(
      name: _Paths.PAGE4_JOBS_LIST,
      page: () => Page4JobsListView(),
      binding: Page4JobsListBinding(),
    ),
    GetPage(
      name: _Paths.PAGE9_ACCEPT_SCHEDULED_JOB,
      page: () => Page9AcceptScheduledJobView(),
      binding: Page9AcceptScheduledJobBinding(),
    ),
  ];
}
