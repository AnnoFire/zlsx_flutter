import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'app/routes/app_pages.dart';

//Theme主题颜色统一配置
void main() async {
  await GetStorage.init();
  runApp(
    ScreenUtilInit(
      designSize: const Size(1080, 2400),
      builder: (context, child) {
        return GetMaterialApp(
          theme: ThemeData(
            scaffoldBackgroundColor: Colors.white,
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
