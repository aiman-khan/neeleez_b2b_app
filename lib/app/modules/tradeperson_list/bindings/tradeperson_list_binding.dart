import 'package:get/get.dart';

import '../controllers/tradeperson_list_controller.dart';

class TradepersonListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TradepersonListController>(
      () => TradepersonListController(),
    );
  }
}
