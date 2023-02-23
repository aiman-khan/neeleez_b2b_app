import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:neeleez_b2b/app/constants/sized_box.dart';

import '../../../../gen/assets.gen.dart';
import '../../../utils/colors.dart';
import '../controllers/tradeperson_list_controller.dart';

class TradepersonListView extends GetView<TradepersonListController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 1.sw,
        height: 1.sh,
        padding: EdgeInsets.symmetric(horizontal: 18.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              Column(
                children: [
                  Assets.pngs.plumber.image(
                    height: 90.r,
                    width: 64.r,
                  ),
                  Text(
                    'Plumber',
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: AppColors.fontColorGrey,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              Column(
                children: [
                  Assets.pngs.cleaner.image(
                    height: 82.r,
                    width: 60.r,
                  ),
                  Text(
                    'Cleaner',
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: AppColors.fontColorGrey,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              Column(
                children: [
                  Assets.pngs.painter.image(
                    height: 90.r,
                    width: 64.r,
                  ),
                  Text(
                    'Painter',
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: AppColors.fontColorGrey,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              Column(
                children: [
                  Assets.pngs.technician.image(
                    height: 90.r,
                    width: 64.r,
                  ),
                  Text(
                    'Technician',
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: AppColors.fontColorGrey,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ]),
            32.hb,
            Divider(
              thickness: 1,
            ),
            32.hb,
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              Column(
                children: [
                  Assets.pngs.handyMan.image(
                    height: 90.r,
                    width: 64.r,
                  ),
                  Text(
                    'Handy Man',
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: AppColors.fontColorGrey,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              Column(
                children: [
                  Assets.pngs.towing.image(
                    height: 90.r,
                    width: 60.r,
                  ),
                  Text(
                    'Towing',
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: AppColors.fontColorGrey,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              Column(
                children: [
                  Assets.pngs.electrician.image(
                    height: 90.r,
                    width: 64.r,
                  ),
                  Text(
                    'Electrician',
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: AppColors.fontColorGrey,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              Column(
                children: [
                  Assets.pngs.autoMechanic.image(
                    height: 90.r,
                    width: 64.r,
                  ),
                  Text(
                    'Auto Mechanic',
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: AppColors.fontColorGrey,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ]),
            32.hb,
            Divider(
              thickness: 1,
            ),
            32.hb,
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              Column(
                children: [
                  Assets.pngs.acRepair.image(
                    height: 90.r,
                    width: 64.r,
                  ),
                  Text(
                    'AC Repair',
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: AppColors.fontColorGrey,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              Column(
                children: [
                  Assets.pngs.plumber.image(
                    height: 90.r,
                    width: 60.r,
                  ),
                  Text(
                    'Fumigation',
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: AppColors.fontColorGrey,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              Column(
                children: [
                  Assets.pngs.lorem.image(
                    height: 90.r,
                    width: 64.r,
                  ),
                  Text(
                    'Lorem',
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: AppColors.fontColorGrey,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              Column(
                children: [
                  Assets.pngs.cleaner.image(
                    height: 90.r,
                    width: 64.r,
                  ),
                  Text(
                    'Carpenter',
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: AppColors.fontColorGrey,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
