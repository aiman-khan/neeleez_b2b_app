// void showAlert(context) {
//   showDialog(
//       context: context,
//       builder: (context) {
//         return Dialog(
//           backgroundColor: Colors.green,
//           shape:
//               RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               Align(
//                 alignment: Alignment.topRight,
//                 child: GestureDetector(
//                   onTap: () {
//                     Get.back();
//                   },
//                   child: Container(
//                     height: 25.r,
//                     width: 25.r,
//                     decoration: BoxDecoration(
//                         color: AppColors.charcoal_797979,
//                         borderRadius: BorderRadius.circular(50)),
//                     child: Icon(
//                       Icons.close_rounded,
//                       size: 20.r,
//                       color: AppColors.fontWhite_FFFFFF,
//                     ),
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(14.0),
//                 child: Column(
//                   children: [
//                     Icon(Icons.cancel),
//                     MyText(
//                         text: "Hello",
//                         fontSize: 24,
//                         textAlign: TextAlign.center,
//                         fontClr: AppColors.fontBlack_233B45),
//                   ],
//                 ),
//               ),
//               Container(
//                 width: double.infinity,
//                 decoration: BoxDecoration(
//                     color: AppColors.white_FFFFFF,
//                     borderRadius: BorderRadius.only(
//                         bottomLeft: Radius.circular(25),
//                         bottomRight: Radius.circular(25))),
//                 child: Column(mainAxisSize: MainAxisSize.max, children: [
//                   15.hb,
//                   MyText(
//                       text:
//                           "Reloaded 1 of 2317 libraries in 1,483ms (compile: 56 ms, reload: 823 ms, reassemble: 463 ms).",
//                       fontSize: 12,
//                       textAlign: TextAlign.center,
//                       fontClr: AppColors.fontBlack_233B45),

//                   40.hb,

//                   /// [Remove Button]
//                   SizedBox(
//                     width: double.infinity,
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                       children: [
//                         CustomElevatedButton(
//                             width: 120.w,
//                             height: 55.h,
//                             title: "OK",
//                             onTap: () {
//                               Globals.guestUser = false;
//                               Get.offAllNamed(Routes.LOGIN);
//                             },
//                             backgroundColor: AppColors.mintGreenDark_33BF90),
//                         CustomElevatedButton(
//                             width: 120.w,
//                             height: 55.h,
//                             title: "Cancel",
//                             onTap: () {
//                               Globals.guestUser = false;
//                               Get.offAllNamed(Routes.LOGIN);
//                             },
//                             backgroundColor: AppColors.mintGreenDark_33BF90)
//                       ],
//                     ),
//                   ),
//                   10.hb,
//                 ]),
//               ),
//             ],
//           ),
//         );
//       });
// }
