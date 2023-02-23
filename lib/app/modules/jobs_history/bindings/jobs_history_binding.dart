import 'package:get/get.dart';

import '../controllers/jobs_history_controller.dart';

class JobsHistoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<JobsHistoryController>(
      () => JobsHistoryController(),
    );
  }
}
