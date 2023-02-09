import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension WB on num {
  SizedBox get wb {
    return SizedBox(
      width: w,
    );
  }
}

extension HB on num {
  SizedBox get hb {
    return SizedBox(
      height: h,
    );
  }
}
