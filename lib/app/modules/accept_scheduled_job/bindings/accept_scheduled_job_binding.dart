import 'package:get/get.dart';

import '../controllers/accept_scheduled_job_controller.dart';

class Page9AcceptScheduledJobBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Page9AcceptScheduledJobController>(
      () => Page9AcceptScheduledJobController(),
    );
  }
}
