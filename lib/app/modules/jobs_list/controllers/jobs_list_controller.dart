import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:neeleez_b2b/app/models/jobs.dart';

import '../../../../services/endpoints.dart';
import '../../../../services/feed_services.dart';

class Page4JobsListController extends GetxController {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  final count = 0.obs;
  final jobs = RxList<Jobs>([]);

  Future<void> loadFeed() async {
    try {
      jobs.addAll(
        await FeedServices().getAllJobs(
          1,
          1,
          "2018-01-16T16:41:10.599Z",
          "2018-01-16T16:41:10.599Z",
          30329523,
          30329523,
          30329523,
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
