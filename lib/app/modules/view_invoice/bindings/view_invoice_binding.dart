import 'package:get/get.dart';

import '../controllers/view_invoice_controller.dart';

class ViewInvoiceBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ViewInvoiceController>(
      () => ViewInvoiceController(),
    );
  }
}
