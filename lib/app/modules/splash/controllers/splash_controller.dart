import 'package:get/get.dart';

import '../../../routes/app_pages.dart';

class SplashController extends GetxController {
  //TODO: Implement SplashController

  final count = 0.obs;
  final loading = true.obs;

  Future<void> loadSplash() async {
    await Future.delayed(const Duration(seconds: 5));
    loading.value = false;
    Get.offAndToNamed(Routes.SIGN_IN);
  }

  @override
  void onInit() {
    loadSplash();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
