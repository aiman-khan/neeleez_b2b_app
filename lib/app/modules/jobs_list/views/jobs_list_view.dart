import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:neeleez_b2b/app/constants/sized_box.dart';
import 'package:neeleez_b2b/app/routes/app_pages.dart';
import 'package:neeleez_b2b/core/drawer.dart';
import 'package:neeleez_b2b/gen/assets.gen.dart';

import '../../../../core/custom_elevated_button.dart';
import '../../../../core/job_card_widget.dart';
import '../../../utils/colors.dart';
import '../controllers/jobs_list_controller.dart';

class JobsListView extends GetView<Page4JobsListController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      key: controller.scaffoldKey,
      backgroundColor: Colors.grey,
      body: Container(
        width: 1.sw,
        height: 1.sh,
        child: SingleChildScrollView(
          child: Column(
            children: [
              AppBar(
                automaticallyImplyLeading: false,
                title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          controller.scaffoldKey.currentState!.openDrawer();
                        },
                        child: Assets.pngs.menu.image(
                          height: 15.r,
                        ),
                      ),
                      Row(children: [
                        Assets.pngs.flag.image(
                          height: 30.r,
                          width: 30.r,
                        ),
                        5.wb,
                        Assets.pngs.menuNotification.image(
                          height: 28.r,
                          width: 28.r,
                        ),
                        5.wb,
                        Assets.pngs.profile.image(
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
                  Assets.pngs.scheduledJobsHeading.image(),
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
              controller.jobs.isEmpty
                  ? Column(
                      children: [
                        86.hb,
                        Assets.pngs.noScheduledJobs.image(
                          height: 180.r,
                          width: 180.r,
                        ),
                        28.hb,
                        Text(
                          "There are no Ongoing jobs for you at the moment",
                          style: TextStyle(
                            color: AppColors.fontColorWhite,
                            fontSize: 12.sp,
                          ),
                        ),
                        14.hb,
                        Text(
                          "Please Keep Looking...",
                          style: TextStyle(
                            color: AppColors.fontColorWhite,
                            fontSize: 12.sp,
                          ),
                        ),
                      ],
                    )
                  : SizedBox(
                      height: 500.h,
                      child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: controller.jobs.length,
                          itemBuilder: (context, index) {
                            return JobCardWidget(
                                button: CustomElevatedButton(
                              width: 150,
                              height: 40,
                              title: "More Details",
                              onTap: () {
                                Get.toNamed(Routes.PAGE9_ACCEPT_SCHEDULED_JOB);
                              },
                              backgroundColor1: AppColors.darkRed,
                              backgroundColor2: AppColors.lightRed,
                            ));
                          }),
                    ),
              20.hb
            ],
          ),
        ),
      ),
    );
  }
}
