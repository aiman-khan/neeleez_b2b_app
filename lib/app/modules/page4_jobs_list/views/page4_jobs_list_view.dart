import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:neeleez_b2b/app/constants/sized_box.dart';
import 'package:neeleez_b2b/app/routes/app_pages.dart';
import 'package:neeleez_b2b/app/utils/assets_paths.dart';

import '../../../../core/custom_elevated_button.dart';
import '../../../../core/job_card_widget.dart';
import '../../../utils/colors.dart';
import '../controllers/page4_jobs_list_controller.dart';

class Page4JobsListView extends GetView<Page4JobsListController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Container(
        width: 1.sw,
        height: 1.sh,
        child: SingleChildScrollView(
          child: Column(
            children: [
              AppBar(
                title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        AssetsPaths.MENU,
                        height: 15.r,
                      ),
                      Row(children: [
                        Image.asset(
                          AssetsPaths.FLAG,
                          height: 30.r,
                          width: 30.r,
                        ),
                        5.wb,
                        Image.asset(
                          AssetsPaths.MENU_NOTIFICATION,
                          height: 28.r,
                          width: 28.r,
                        ),
                        5.wb,
                        Image.asset(
                          AssetsPaths.PROFILE,
                          height: 30.r,
                          width: 30.r,
                        )
                      ]),
                    ]),
                centerTitle: true,
                backgroundColor: Colors.white,
                elevation: 0,
              ),
              Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset(
                    AssetsPaths.SCHEDULED_JOBS_HEADING,
                  ),
                  Positioned(
                    top: 18.h,
                    child: Text(
                      'Scheduled Jobs',
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                        color: AppColors.fontColorWhite,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              20.hb,
              JobCardWidget(
                  button: CustomElevatedButton(
                width: 150,
                height: 40,
                title: "More Details",
                onTap: () {
                  Get.toNamed(Routes.PAGE9_ACCEPT_SCHEDULED_JOB);
                },
                backgroundColor1: AppColors.darkRed,
                backgroundColor2: AppColors.lightRed,
              )),
              45.hb,
              JobCardWidget(
                  button: CustomElevatedButton(
                width: 150,
                height: 40,
                title: "More Details",
                onTap: () {},
                backgroundColor1: AppColors.darkRed,
                backgroundColor2: AppColors.lightRed,
              )),
              45.hb,
              JobCardWidget(
                  button: CustomElevatedButton(
                width: 150,
                height: 40,
                title: "More Details",
                onTap: () {},
                backgroundColor1: AppColors.darkRed,
                backgroundColor2: AppColors.lightRed,
              )),
              20.hb
            ],
          ),
        ),
      ),
    );
  }
}
