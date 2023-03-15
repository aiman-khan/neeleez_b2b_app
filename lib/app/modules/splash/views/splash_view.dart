import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:neeleez_b2b/app/constants/sized_box.dart';
import 'package:neeleez_b2b/app/modules/splash/views/widget/splash_animation.dart';

import '../../../../gen/assets.gen.dart';
import '../../../utils/colors.dart';
import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  @override
  Widget build(BuildContext context) {
    return SplashAnimation();
    // return Scaffold(
    //   backgroundColor: AppColors.darkRed,
    //   body: Column(
    //     crossAxisAlignment: CrossAxisAlignment.start,
    //     children: [
    //       Assets.pngs.logo.image(
    //         width: 92.w,
    //         height: 141.h,
    //       ),
    //       160.hb,
    //       Center(
    //         child: Text(
    //           'Service Provider App',
    //           style: TextStyle(
    //             fontSize: 20.sp,
    //             fontWeight: FontWeight.bold,
    //             color: AppColors.fontColorWhite,
    //           ),
    //           textAlign: TextAlign.center,
    //         ),
    //       ),
    //       18.hb,
    //       Center(
    //         child: Text(
    //           'Beta version',
    //           style: TextStyle(
    //               fontSize: 14.sp,
    //               fontWeight: FontWeight.bold,
    //               color: AppColors.fontColorWhite),
    //           textAlign: TextAlign.center,
    //         ),
    //       ),
    //     ],
    //   ),
    // );
  }
}
