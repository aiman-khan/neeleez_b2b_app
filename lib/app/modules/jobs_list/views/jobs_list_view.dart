import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'package:get/get.dart';
import 'package:neeleez_b2b/app/constants/sized_box.dart';
import 'package:neeleez_b2b/app/routes/app_pages.dart';
import 'package:neeleez_b2b/app/utils/app_popups.dart';
import 'package:neeleez_b2b/core/drawer.dart';
import 'package:neeleez_b2b/gen/assets.gen.dart';

import '../../../../core/custom_elevated_button.dart';
import '../../../../core/job_card_widget.dart';
import '../../../utils/colors.dart';
import '../controllers/jobs_list_controller.dart';

class JobsListView extends GetView<Page4JobsListController> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        drawer: MyDrawer(),
        key: controller.scaffoldKey,
        backgroundColor: Colors.grey,
        body: Container(
          width: 1.sw,
          height: 1.sh,
          child: SingleChildScrollView(
            child: Obx(
              () => Column(
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
                  6.hb,
                  controller.loading.value
                      ? Container(
                          decoration: BoxDecoration(
                            //color: AppColors(..blackcardsBackground,
                            color: Colors.transparent,
                            borderRadius:
                                BorderRadius.all(Radius.circular(25.r)),
                            boxShadow: [
                              BoxShadow(
                                //  color: AppColors().shadowColor,
                                color: Colors.transparent,
                                spreadRadius: 5.r,
                                blurRadius: 5.r,
                                offset: const Offset(
                                    3, 5), // changes position of shadow
                              ),
                            ],
                          ),
                          height: 120.h,
                          width: 120.h,
                          child: Center(
                            child: SpinKitCircle(
                              color: AppColors.darkRed,
                              size: 50.0,
                            ),
                          ),
                        )
                      : controller.jobs.isEmpty
                          ? Container(
                              height: 400.h,
                              child: Assets.pngs.noScheduledJobs
                                  .image(height: 220.r, width: 220.r),
                            )
                          : ListView.separated(
                              shrinkWrap: true,
                              padding: EdgeInsets.symmetric(horizontal: 12.w),
                              physics: NeverScrollableScrollPhysics(),
                              separatorBuilder: (context, index) {
                                return 36.hb;
                              },
                              itemCount: controller.jobs.length,
                              itemBuilder: (context, index) {
                                return JobCardWidget(
                                    jobModel: controller.jobs[index],
                                    button: CustomElevatedButton(
                                      width: 150,
                                      height: 40,
                                      title: "More Details",
                                      onTap: () {
                                        Get.toNamed(
                                            Routes.PAGE9_ACCEPT_SCHEDULED_JOB);
                                      },
                                      backgroundColor1: AppColors.darkRed,
                                      backgroundColor2: AppColors.lightRed,
                                    ));
                              }),
                  20.hb
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
