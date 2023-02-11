import 'package:get/get.dart';

import '../controllers/page4_jobs_list_controller.dart';

class Page4JobsListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Page4JobsListController>(
      () => Page4JobsListController(),
    );
  }
}
