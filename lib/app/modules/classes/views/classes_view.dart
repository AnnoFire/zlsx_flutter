import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:zlsx_flutter/app/utils/screen_adapt.dart';

import '../controllers/classes_controller.dart';

//TODO : 标题 刷新 用户名称（超出。。。） 小页面的切换   搜索   内容展示（空内容） 订单数量
class ClassesView extends GetView<ClassesController> {
  const ClassesView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(color: Color.fromARGB(255, 242, 248, 255)),
          child: Column(
            children: [
              SizedBox(height: ScreenAdapt.height(160)),
              Align(
                alignment: Alignment.centerLeft,
                child: Obx(
                  () => Text(
                    //'活动名称',
                    controller.activityId.value,
                    style: TextStyle(
                        fontSize: ScreenAdapt.fontSize(80),
                        color: Colors.black,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              Row(
                children: [
                  Text('班级统计'),
                  Text('订单明细'),
                  Expanded(
                    child: Text.rich(
                      TextSpan(
                        children: [
                          WidgetSpan(child: Icon(Icons.person)),
                          TextSpan(text: '客户名称'),
                        ],
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                  )
                ],
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: '请输入班级名称',
                ),
              ),
              SizedBox(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(
                      'https://imagesize.zhsc.zxhsd.com/sp/files/6f80b763-1157-4dc6-aca5-0bf5f3301191.png',
                      height: ScreenAdapt.height(400),
                      width: ScreenAdapt.width(400),
                    ),
                    SizedBox(height: ScreenAdapt.height(70)),
                    Text(
                      '暂无数据',
                      style: TextStyle(
                          fontSize: ScreenAdapt.fontSize(48),
                          color: Colors.black54),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
