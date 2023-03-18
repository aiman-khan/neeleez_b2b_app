import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:neeleez_b2b/app/models/jobs.dart';

import '../../../../services/endpoints.dart';
import '../../../../services/job_services.dart';

class Page4JobsListController extends GetxController {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  final count = 0.obs;
  final loading = true.obs;
  final jobs = RxList<Jobs>([]);

  Future<void> loadFeed() async {
    try {
      jobs.addAll(
        await JobServices().getAllJobs(
          1,
          10,
          "2023-01-16T16:41:10.599Z",
          "2023-03-16T16:41:10.599Z",
        ),
      );
      update();
    } on MessageException catch (e) {
      Get.showSnackbar(GetSnackBar(
        title: 'Failed to load posts',
        message: e.message,
        duration: const Duration(seconds: 3),
      ));
    }
    loading.value = false;
  }

  @override
  void onInit() {
    super.onInit();
    loadFeed();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
