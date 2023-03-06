import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PointsController extends GetxController {
  //TODO: Implement PointsController
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
