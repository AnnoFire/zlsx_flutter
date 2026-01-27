import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/classes_controller.dart';

//TODO : 标题 刷新 用户名称（超出。。。） 小页面的切换   搜索   内容展示（空内容） 订单数量
class ClassesView extends GetView<ClassesController> {
  const ClassesView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text(
          'ClassesView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
