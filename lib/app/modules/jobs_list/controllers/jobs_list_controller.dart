import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Page4JobsListController extends GetxController {
  //TODO: Implement Page4JobsListController
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  final count = 0.obs;
  @override
  void onInit() {
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
