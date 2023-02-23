import 'package:get/get.dart';

import '../controllers/parts_and_services_controller.dart';

class PartsAndServicesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PartsAndServicesController>(
      () => PartsAndServicesController(),
    );
  }
}
