import 'package:get/get.dart';

import '../controllers/page3_job_notification_controller.dart';

class Page3JobNotificationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Page3JobNotificationController>(
      () => Page3JobNotificationController(),
    );
  }
}
