import 'package:get/get.dart';

import '../controllers/add_quotation_controller.dart';

class AddQuotationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddQuotationController>(
      () => AddQuotationController(),
    );
  }
}
