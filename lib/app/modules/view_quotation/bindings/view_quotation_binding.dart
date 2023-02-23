import 'package:get/get.dart';

import '../controllers/view_quotation_controller.dart';

class ViewQuotationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ViewQuotationController>(
      () => ViewQuotationController(),
    );
  }
}
