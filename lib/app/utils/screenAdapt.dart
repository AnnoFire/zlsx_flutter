import 'package:flutter_screenutil/flutter_screenutil.dart';

class ScreenAdapt {
  static  width(num v) {
    return v.w;
  }
  static  height(num v) {
    return v.h;
  }
  static  fontSize(num v) {
    return v.sp;
  }
  static getScreenWidth(){
    return 1.w;
  } 
  static getScreenHeight(){
    return 1.h;
  }
}