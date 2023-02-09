import 'package:get/get.dart';

import 'package:neeleez_b2b/app/modules/home/bindings/home_binding.dart';
import 'package:neeleez_b2b/app/modules/home/views/home_view.dart';
import 'package:neeleez_b2b/app/modules/sign_in/bindings/sign_in_binding.dart';
import 'package:neeleez_b2b/app/modules/sign_in/views/sign_in_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SIGN_IN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SIGN_IN,
      page: () => SignInView(),
      binding: SignInBinding(),
    ),
  ];
}
