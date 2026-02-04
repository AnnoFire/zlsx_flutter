import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:zlsx_flutter/app/utils/screen_adapt.dart';

import '../controllers/classes_controller.dart';
import 'components/classes_search_bar.dart';

//TODO : 标题 刷新 用户名称（超出。。。） 小页面的切换   搜索（接口）   内容展示（空内容）   订单数量
class ClassesView extends GetView<ClassesController> {
  const ClassesView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // 背景色
          Container(
            color: Color.fromARGB(255, 242, 248, 255),
          ),
          // 背景图
          Positioned(
            top: 0,
            right: 0,
            child: Image.network(
              'https://imagesize.zhsc.zxhsd.com/sp/files/cf177fd0-4f9c-4ec7-9ada-557d0bb294c1.png',
              width: ScreenAdapt.width(450),
              height: ScreenAdapt.height(450),
            ),
          ),
          //内容
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: ScreenAdapt.height(120)),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                      padding: EdgeInsets.only(
                        left: ScreenAdapt.width(40),
                      ),
                      child: Row(
                        children: [
                          Obx(
                            () => Text(
                              //'活动名称',
                              controller.activityName.value,
                              style: TextStyle(
                                  fontSize: ScreenAdapt.fontSize(64),
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          SizedBox(width: ScreenAdapt.width(40)),
                          Container(
                              width: ScreenAdapt.width(180),
                              padding: EdgeInsets.symmetric(
                                  vertical: ScreenAdapt.height(10),
                                  horizontal: ScreenAdapt.width(14)),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                      ScreenAdapt.width(36)),
                                  border: Border.all(
                                      color:
                                          Color.fromARGB(255, 55, 154, 251))),
                              child: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.network(
                                      'https://imagesize.zhsc.zxhsd.com/sp/files/4104a963-ba3c-431d-9588-65c5f052ddff.png',
                                      width: ScreenAdapt.width(40),
                                    ),
                                    SizedBox(
                                      width: ScreenAdapt.width(10),
                                    ),
                                    Text(
                                      '刷新',
                                      style: TextStyle(
                                          fontSize: ScreenAdapt.fontSize(40),
                                          height: 1.0,
                                          color: Color.fromARGB(
                                              255, 55, 154, 251)),
                                    ),
                                  ],
                                ),
                              ))
                        ],
                      )),
                ),
                SizedBox(height: ScreenAdapt.height(20)),
                Obx(
                  () => Row(
                    children: [
                      SizedBox(width: ScreenAdapt.width(40)),
                      GestureDetector(
                        onTap: () {
                          controller.selectedTabIndex.value = 0;
                        },
                        child: Column(
                          children: [
                            Text(
                              '班级统计',
                              style: TextStyle(
                                fontSize: ScreenAdapt.fontSize(50),
                                fontWeight:
                                    controller.selectedTabIndex.value == 0
                                        ? FontWeight.bold
                                        : FontWeight.w500,
                                color: controller.selectedTabIndex.value == 0
                                    ? Color.fromARGB(255, 55, 154, 251)
                                    : Color.fromARGB(255, 153, 153, 153),
                              ),
                            ),
                            SizedBox(height: ScreenAdapt.height(12)),
                            Container(
                              width: ScreenAdapt.width(50),
                              height: ScreenAdapt.width(12),
                              decoration: BoxDecoration(
                                color: controller.selectedTabIndex.value == 0
                                    ? Color.fromARGB(255, 55, 154, 251)
                                    : Colors.transparent,
                                borderRadius:
                                    BorderRadius.circular(ScreenAdapt.width(6)),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: ScreenAdapt.width(60)),
                      GestureDetector(
                          onTap: () {
                            controller.selectedTabIndex.value = 1;
                          },
                          child: Column(
                            children: [
                              Text(
                                '订单明细',
                                style: TextStyle(
                                  fontSize: ScreenAdapt.fontSize(50),
                                  fontWeight:
                                      controller.selectedTabIndex.value == 1
                                          ? FontWeight.bold
                                          : FontWeight.w500,
                                  color: controller.selectedTabIndex.value == 1
                                      ? Color.fromARGB(255, 55, 154, 251)
                                      : Color.fromARGB(255, 153, 153, 153),
                                ),
                              ),
                              SizedBox(height: ScreenAdapt.height(12)),
                              Container(
                                width: ScreenAdapt.width(50),
                                height: ScreenAdapt.width(12),
                                decoration: BoxDecoration(
                                  color: controller.selectedTabIndex.value == 1
                                      ? Color.fromARGB(255, 55, 154, 251)
                                      : Colors.transparent,
                                  borderRadius: BorderRadius.circular(
                                      ScreenAdapt.width(6)),
                                ),
                              ),
                            ],
                          )),
                      Expanded(
                        child: Text.rich(
                          TextSpan(
                            children: [
                              WidgetSpan(
                                  child: Image.network(
                                      "https://imagesize.zhsc.zxhsd.com/sp/files/38527474-f771-4dbb-bb41-112d9b950eb5.png",
                                      width: ScreenAdapt.width(54))),
                              TextSpan(
                                text: '客户名称',
                                style: TextStyle(
                                    fontSize: ScreenAdapt.fontSize(50),
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.right,
                          maxLines: 1,
                        ),
                      ),
                      SizedBox(width: ScreenAdapt.width(40)),
                    ],
                  ),
                ),
                Obx(() => controller.selectedTabIndex.value == 1
                    ? Padding(
                        padding: EdgeInsets.fromLTRB(ScreenAdapt.width(50),
                            ScreenAdapt.height(40), ScreenAdapt.width(50), 0),
                        // 订单数量
                        child: Container(
                          padding: EdgeInsets.all(ScreenAdapt.height(50)),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.circular(ScreenAdapt.width(20)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 10,
                                offset: Offset(0, 2),
                              ),
                            ],
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    '0',
                                    style: TextStyle(
                                        fontSize: ScreenAdapt.fontSize(50),
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(height: ScreenAdapt.height(10)),
                                  Text(
                                    '订购人数',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        color:
                                            Color.fromARGB(255, 102, 102, 102)),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    '0',
                                    style: TextStyle(
                                        fontSize: ScreenAdapt.fontSize(50),
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(height: ScreenAdapt.height(10)),
                                  Text(
                                    '订单数',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        color:
                                            Color.fromARGB(255, 102, 102, 102)),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    '0',
                                    style: TextStyle(
                                        fontSize: ScreenAdapt.fontSize(50),
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(height: ScreenAdapt.height(10)),
                                  Text(
                                    '支付数',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        color:
                                            Color.fromARGB(255, 102, 102, 102)),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    '0',
                                    style: TextStyle(
                                        fontSize: ScreenAdapt.fontSize(50),
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(height: ScreenAdapt.height(10)),
                                  Text(
                                    '收获数',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        color:
                                            Color.fromARGB(255, 102, 102, 102)),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      )
                    : const SizedBox.shrink()),
                const ClassesSearchBar(),
                // 方案一 自动占满剩余空间
                // Expanded(
                //   child: Container(
                //     margin: EdgeInsets.all(ScreenAdapt.width(50)),
                //     width: double.infinity,
                //     decoration: BoxDecoration(
                //       color: Colors.white,
                //       borderRadius:
                //           BorderRadius.circular(ScreenAdapt.width(20)),
                //       boxShadow: [
                //         BoxShadow(
                //           color: Colors.black12,
                //           spreadRadius: 1,
                //           blurRadius: 5,
                //           offset: Offset(1, 1),
                //         ),
                //       ],
                //     ),
                //     child: Column(
                //       mainAxisAlignment: MainAxisAlignment.center,
                //       children: [
                //         Image.network(
                //           'https://imagesize.zhsc.zxhsd.com/sp/files/6f80b763-1157-4dc6-aca5-0bf5f3301191.png',
                //           height: ScreenAdapt.height(400),
                //           width: ScreenAdapt.width(400),
                //         ),
                //         SizedBox(height: ScreenAdapt.height(70)),
                //         Text(
                //           '暂无数据',
                //           style: TextStyle(
                //               fontSize: ScreenAdapt.fontSize(48),
                //               color: Colors.black54),
                //         ),
                //       ],
                //     ),
                //   ),
                // )
                //方案二 固定高度
                Obx(
                  () => controller.selectedTabIndex.value == 0
                      ? Container(
                          margin: EdgeInsets.all(ScreenAdapt.width(50)),
                          width: double.infinity,
                          height: ScreenAdapt.height(1400),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.circular(ScreenAdapt.width(20)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                spreadRadius: 1,
                                blurRadius: 5,
                                offset: Offset(1, 1),
                              ),
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.network(
                                'https://imagesize.zhsc.zxhsd.com/sp/files/6f80b763-1157-4dc6-aca5-0bf5f3301191.png',
                                height: ScreenAdapt.height(480),
                                width: ScreenAdapt.width(480),
                              ),
                              SizedBox(height: ScreenAdapt.height(70)),
                              //List.view
                              Text(
                                '暂无数据',
                                style: TextStyle(
                                    fontSize: ScreenAdapt.fontSize(48),
                                    color: Colors.black54),
                              ),
                            ],
                          ),
                        )
                      : ListView.builder(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: 10,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                                onTap: () => {debugPrint('test')},
                                child: Container(
                                  margin: EdgeInsets.all(ScreenAdapt.width(50)),
                                  padding:
                                      EdgeInsets.all(ScreenAdapt.width(50)),
                                  height: ScreenAdapt.height(500),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(
                                        ScreenAdapt.width(20)),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black12,
                                        spreadRadius: 1,
                                        blurRadius: 5,
                                        offset: Offset(1, 1),
                                      ),
                                    ],
                                  ),
                                  child: Text('1124'),
                                ));
                          },
                        ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
