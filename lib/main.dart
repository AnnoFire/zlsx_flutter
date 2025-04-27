import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    ScreenUtilInit(
      designSize: const Size(1080, 2400),
      builder: (context, child) {
        return GetMaterialApp(
          theme: ThemeData(
            scaffoldBackgroundColor:Colors.white,
          ),
          title: "浙里书香flutter版本demo",
          initialRoute: AppPages.INITIAL,
          getPages: AppPages.routes,
          debugShowCheckedModeBanner: false,
        );
      },
    ),
  );
}
