import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:get/get.dart';
import 'package:zlsx_flutter/app/routes/app_pages.dart';
import 'package:zlsx_flutter/app/utils/cross_image.dart';
import 'package:zlsx_flutter/app/utils/screen_adapt.dart';

import '../controllers/account_login_controller.dart';

class AccountLoginView extends GetView<AccountLoginController> {
  const AccountLoginView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('浙里书香管理端',
      //       style: TextStyle(fontSize: ScreenAdapt.fontSize(50))),
      //   backgroundColor: Color.fromRGBO(237, 237, 237, 1),
      //   centerTitle: true,
      // ),
      // TODO: 验证码 登录
      body: Center(
        child: Column(
          children: [
            SizedBox(height: ScreenAdapt.height(200)),
            Container(
              width: ScreenAdapt.width(1080),
              padding: EdgeInsets.only(
                  left: ScreenAdapt.width(60),
                  right: ScreenAdapt.width(60),
                  top: ScreenAdapt.height(64),
                  bottom: ScreenAdapt.height(40)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('  欢迎使用',
                      style: TextStyle(
                          fontSize: ScreenAdapt.fontSize(80),
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(60, 60, 60, 1))),
                  SizedBox(height: ScreenAdapt.height(36)),
                  Text('「浙里书香」管理端',
                      style: TextStyle(
                          fontSize: ScreenAdapt.fontSize(80),
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(55, 154, 251, 1))),
                ],
              ),
            ),
            SizedBox(height: ScreenAdapt.height(100)),
            // CORS跨域图片
            // Image.network(
            //   width: double.infinity,
            //   'https://imagesize.zhsc.zxhsd.com/sp/files/328b44e8-a2ed-41c2-a274-bb0bf0a6fd94.png',
            //   fit: BoxFit.cover,
            // ),
            Container(
              padding: EdgeInsets.all(ScreenAdapt.width(100)),
              width: ScreenAdapt.width(1080),
              //表单
              child: Form(
                key: controller.formKey,
                child: Column(
                  children: [
                    SizedBox(
                      width: ScreenAdapt.width(1000),
                      child: TextFormField(
                        controller: controller.phoneController,
                        // validator: (value) {
                        //   if (value == null || value.isEmpty) {
                        //     Fluttertoast.showToast(msg: '请输入手机号码');
                        //     return '请输入手机号码';
                        //   }
                        //   if (!RegExp(r'^1[3-9]\d{9}$').hasMatch(value)) {
                        //     Fluttertoast.showToast(msg: '请输入正确的手机号码');
                        //     return '请输入正确的手机号码';
                        //   }
                        //   return null;
                        // },
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          hoverColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hintText: "请输入手机号码",
                          hintStyle: TextStyle(
                            fontSize: ScreenAdapt.fontSize(36),
                            // color: Color.fromRGBO(179,179,179,255),
                            color:Colors.black54,
                          ),
                          prefixIcon: Icon(
                            Icons.phone_iphone_rounded,
                            // color: Color.fromRGBO(149, 149, 149, 255),
                            color:Colors.black54,
                            size: ScreenAdapt.width(40.0),
                          ),
                          contentPadding: EdgeInsets.only(
                            left: ScreenAdapt.width(50),
                            right: ScreenAdapt.width(50),
                            top: ScreenAdapt.height(50),
                            bottom: ScreenAdapt.height(50),
                          ),
                          filled: true,
                          fillColor: const Color.fromARGB(255, 245, 251, 255),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Color.fromRGBO(7, 214, 255, 1),
                            ),
                          ),
                        ),
                        onChanged: (value) {
                          controller.phoneNumber.value = value;
                        },
                      ),
                    ),
                    SizedBox(height: ScreenAdapt.height(60)),
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        SizedBox(
                          width: ScreenAdapt.width(1000),
                          child: TextFormField(
                            controller: controller.codeController,
                            onChanged: (value) {
                              controller.code.value = value;
                            },
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              hoverColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hintText: "请输入验证码",
                              hintStyle: TextStyle(
                                fontSize: ScreenAdapt.fontSize(36),
                                color:Colors.black54,
                              ),
                              contentPadding: EdgeInsets.only(
                                left: ScreenAdapt.width(60),
                                right: ScreenAdapt.width(50),
                                top: ScreenAdapt.height(50),
                                bottom: ScreenAdapt.height(50),
                              ),
                              filled: true,
                              fillColor:
                                  const Color.fromARGB(255, 245, 251, 255),
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.transparent),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Color.fromRGBO(7, 214, 255, 1),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          right: ScreenAdapt.width(20),
                          child: Container(
                            height: ScreenAdapt.height(90),
                            decoration: BoxDecoration(
                              border: Border(
                                left: BorderSide(
                                  width: 2,
                                  color: Color.fromRGBO(223, 239, 239, 1),
                                ),
                              ),
                            ),
                            child: TextButton(
                              style: TextButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(0),
                                ),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 16, vertical: 0),
                              ),
                              onPressed: () {
                                controller.getCode();
                              },
                              child: Text('获取验证码',
                                  style: TextStyle(
                                      fontSize: ScreenAdapt.fontSize(40),
                                      color: Color.fromRGBO(55, 154, 251, 1))),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: ScreenAdapt.height(60)),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        gradient: LinearGradient(
                          colors: [
                            const Color.fromRGBO(141, 227, 252, 1),
                            const Color.fromRGBO(84, 195, 255, 1)
                          ], // 渐变色开始和结束
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ),
                      ),
                      child: TextButton(
                        style: TextButton.styleFrom(
                          fixedSize: Size(
                              ScreenAdapt.width(1000), ScreenAdapt.height(135)),
                          backgroundColor: Colors.transparent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onPressed: () {
                          controller.userLogin();
                        },
                        child: Text(
                          "登录",
                          style: TextStyle(
                              fontSize: ScreenAdapt.fontSize(48),
                              color: Colors.white),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
