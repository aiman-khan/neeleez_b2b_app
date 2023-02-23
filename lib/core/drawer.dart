import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:neeleez_b2b/app/constants/sized_box.dart';
import 'package:neeleez_b2b/gen/assets.gen.dart';

import '../app/utils/colors.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({
    super.key,
  });

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.darkRed,
      width: 325.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: AppColors.lightRed,
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 40.h),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: 30.r,
                      backgroundColor: AppColors.fontColorWhite,
                      child:
                          Assets.pngs.profile.image(height: 64.r, width: 64.r),
                    ),
                    Assets.pngs.menu.image(
                      color: AppColors.fontColorWhite,
                      height: 16.h,
                    )
                  ],
                ),
                18.hb,
                Text(
                  "Francesca Metts",
                  style: TextStyle(
                    color: AppColors.fontColorWhite,
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                12.hb,
                Text(
                  "francesca.metts@gmail.com",
                  style: TextStyle(
                    color: AppColors.fontColorWhite,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          10.hb,
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              54.hb,

              ///Home
              Row(
                children: [
                  Assets.pngs.home.image(
                    height: 20.r,
                    width: 20.r,
                  ),
                  20.wb,
                  Text(
                    "Home",
                    style: TextStyle(
                      color: AppColors.fontColorWhite,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              32.hb,

              /// [future jobs]
              Row(
                children: [
                  Assets.pngs.futureJobs.image(
                    height: 20.r,
                    width: 20.r,
                  ),
                  20.wb,
                  Text(
                    "Future Jobs",
                    style: TextStyle(
                      color: AppColors.fontColorWhite,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              32.hb,

              /// job history
              Row(
                children: [
                  Assets.pngs.jbsHistory.image(
                    height: 20.r,
                    width: 20.r,
                  ),
                  20.wb,
                  Text(
                    "Jobs History",
                    style: TextStyle(
                      color: AppColors.fontColorWhite,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),

              32.hb,

              /// client payment
              Row(
                children: [
                  Assets.pngs.clientPayment.image(
                    height: 20.r,
                    width: 20.r,
                  ),
                  20.wb,
                  Text(
                    "Client Payment",
                    style: TextStyle(
                      color: AppColors.fontColorWhite,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),

              32.hb,

              /// your wallet
              Row(
                children: [
                  Assets.pngs.yourWallet.image(
                    height: 20.r,
                    width: 20.r,
                  ),
                  20.wb,
                  Text(
                    "Your Wallet",
                    style: TextStyle(
                      color: AppColors.fontColorWhite,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),

              32.hb,

              /// points
              Row(
                children: [
                  Assets.pngs.points.image(
                    height: 20.r,
                    width: 20.r,
                  ),
                  20.wb,
                  Text(
                    "Points",
                    style: TextStyle(
                      color: AppColors.fontColorWhite,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              32.hb,

              /// settings
              Row(
                children: [
                  Assets.pngs.settingsDrawer.image(
                    height: 20.r,
                    width: 20.r,
                  ),
                  20.wb,
                  Text(
                    "Settings",
                    style: TextStyle(
                      color: AppColors.fontColorWhite,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ]),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 24.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "About Us",
                  style: TextStyle(
                    color: AppColors.fontColorWhite.withOpacity(0.5),
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                8.hb,
                Text(
                  "Log Out",
                  style: TextStyle(
                    color: AppColors.fontColorWhite.withOpacity(0.5),
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class DrawerItemWidget extends StatelessWidget {
  final String imagePath;
  final String text;
  const DrawerItemWidget({
    required this.imagePath,
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      visualDensity: const VisualDensity(horizontal: 0, vertical: -2),
      leading: Image.asset(
        imagePath,
        height: 35.r,
        width: 35.r,
      ),
      minLeadingWidth: 4,
      title: Text(
        "jkkk",
        style: TextStyle(
          color: AppColors.fontColorWhite,
          fontSize: 16,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
