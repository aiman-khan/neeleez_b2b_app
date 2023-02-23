import 'package:get/get.dart';

import '../controllers/quotation_list_controller.dart';

class QuotationListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<QuotationListController>(
      () => QuotationListController(),
    );
  }
}
