import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:zlsx_flutter/app/modules/home/views/user_Info.dart';
import 'package:zlsx_flutter/app/utils/keep_alive_wrapper.dart';
import 'package:zlsx_flutter/app/utils/screen_adapt.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  Widget _orderList() {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 10,
      padding: EdgeInsets.all(ScreenAdapt.height(40)),
      itemBuilder: (context, index) {
        // return Card(
        //   margin: EdgeInsets.only(bottom: ScreenAdapt.height(40)),
        //   child: ListTile(
        //     title: Text('学军小学23秋读书活动'),
        //     subtitle: Row(
        //       children: [
        //         Icon(Icons.person_outline, size: 16),
        //         SizedBox(width: 4),
        //         Text('客户：学军小学'),
        //       ],
        //     ),
        //     trailing: Icon(Icons.arrow_forward_ios, size: 16),
        //     onTap: () => print("点击第${index + 1}项"),
        //   ),
        // );
        return Container(
          // height: ScreenAdapt.height(630),
          margin: EdgeInsets.only(bottom: ScreenAdapt.height(40)),
          padding: EdgeInsets.all(ScreenAdapt.height(40)),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Container(
                            margin:EdgeInsets.only(right: ScreenAdapt.width(24)),
                            padding: EdgeInsets.fromLTRB(
                              ScreenAdapt.width(30),
                              ScreenAdapt.height(2),
                              ScreenAdapt.width(30),
                              ScreenAdapt.height(4),
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.blue, width: ScreenAdapt.width(2)),
                              borderRadius: BorderRadius.circular(ScreenAdapt.width(6)),
                            ),
                            child: Text(
                              '自主下单',
                              style: TextStyle(
                                fontSize: ScreenAdapt.fontSize(36),
                                color: Color.fromARGB(255, 55, 154, 251),
                              ),
                            ),
                          ),
                          Container(
                            margin:EdgeInsets.only(right: ScreenAdapt.width(24)),
                            padding: EdgeInsets.fromLTRB(
                              ScreenAdapt.width(30),
                              ScreenAdapt.height(2),
                              ScreenAdapt.width(30),
                              ScreenAdapt.height(4),
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.blue, width: ScreenAdapt.width(2)),
                              borderRadius: BorderRadius.circular(ScreenAdapt.width(6)),
                            ),
                            child: Text(
                              '预收尾款',
                              style: TextStyle(
                                fontSize: ScreenAdapt.fontSize(36),
                                color: Color.fromARGB(255, 55, 154, 251),
                              ),
                            ),
                          ),
                          Container(
                            margin:EdgeInsets.only(right: ScreenAdapt.width(24)),
                            padding: EdgeInsets.fromLTRB(
                              ScreenAdapt.width(30),
                              ScreenAdapt.height(2),
                              ScreenAdapt.width(30),
                              ScreenAdapt.height(4),
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.blue, width: ScreenAdapt.width(2)),
                              borderRadius: BorderRadius.circular(ScreenAdapt.width(6)),
                            ),
                            child: Text(
                              '统一配送',
                              style: TextStyle(
                                fontSize: ScreenAdapt.fontSize(36),
                                color: Color.fromARGB(255, 55, 154, 251),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(
                        ScreenAdapt.width(32),
                        ScreenAdapt.height(12),
                        ScreenAdapt.width(32),
                        ScreenAdapt.width(12),
                      ),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 229, 242, 255),
                        borderRadius:
                            BorderRadius.circular(ScreenAdapt.height(5)),
                      ),
                      child: Text(
                        '进行中',
                        style: TextStyle(
                            fontSize: ScreenAdapt.fontSize(36),
                            color: Color.fromARGB(255, 55, 154, 251)),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(
                    top: ScreenAdapt.height(30),
                    bottom: ScreenAdapt.height(30)),
                child: Text(
                  '订单读书活动',
                  style: TextStyle(
                    fontSize: ScreenAdapt.fontSize(54),
                    color: Color.fromARGB(255, 51, 51, 51),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: ScreenAdapt.width(10)),
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    right: ScreenAdapt.width(16)),
                                child: Image.network(
                                  "https://imagesize.zhsc.zxhsd.com/sp/files/2b8219cb-b090-4149-be51-331e161e0335.png",
                                  width: ScreenAdapt.width(40),
                                ),
                              ),
                              Text(
                                '客户:',
                                style: TextStyle(
                                  fontSize: ScreenAdapt.fontSize(48),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: RichText(
                            text: TextSpan(
                              style: TextStyle(
                                fontSize: ScreenAdapt.fontSize(48),
                                color: Colors.black,
                              ),
                              children: [
                                TextSpan(
                                  text: '这是一个可能非常非常非常长的文本，它会自动换行而不是溢出',
                                ),
                                WidgetSpan(
                                  alignment: PlaceholderAlignment.middle,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        left: ScreenAdapt.width(4)),
                                    child: Image.network(
                                      'https://imagesize.zhsc.zxhsd.com/sp/files/267dbd54-5927-499d-9866-29e625aa4d6b.png',
                                      width: ScreenAdapt.width(50),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      // Padding(
                      //   padding: const EdgeInsets.only(right: 10),
                      //   child: Image.network(
                      //       'https://imagesize.zhsc.zxhsd.com/sp/files/6ec03af6-5b14-4f4e-85d0-63a4b46462a4.png',
                      //       width: ScreenAdapt.width(40)),
                      // ),
                      // Text(
                      //   '时间:',
                      //   style: TextStyle(
                      //     fontSize: ScreenAdapt.fontSize(48),
                      //   ),
                      // ),
                      // Text(
                      //   '2025.1.1 08:30 - 2025.12.31 23:00',
                      //   style: TextStyle(
                      //     fontSize: ScreenAdapt.fontSize(48),
                      //   ),
                      //   softWrap: true,
                      //   overflow: TextOverflow.ellipsis,
                      // ),
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    right: ScreenAdapt.width(16)),
                                child: Image.network(
                                  "https://imagesize.zhsc.zxhsd.com/sp/files/6ec03af6-5b14-4f4e-85d0-63a4b46462a4.png",
                                  width: ScreenAdapt.width(40),
                                ),
                              ),
                              Text(
                                '时间:',
                                style: TextStyle(
                                  fontSize: ScreenAdapt.fontSize(48),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Text(
                            '2025.1.1 08:30 - 2025.12.31 23:00',
                            style: TextStyle(
                              fontSize: ScreenAdapt.fontSize(48),
                            ),
                            softWrap: true,
                            overflow: TextOverflow.ellipsis,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                width: ScreenAdapt.width(880),
                margin: EdgeInsets.only(top: ScreenAdapt.height(60)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                        alignment: Alignment.center,
                        child: Row(
                          children: [
                            Text(
                              '—',
                              style: TextStyle(
                                  fontSize: ScreenAdapt.fontSize(42),
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                            ),
                            SizedBox(width: ScreenAdapt.width(10)),
                            Text(
                              '预订单',
                              style: TextStyle(
                                fontSize: ScreenAdapt.fontSize(40),
                                color: Color.fromARGB(255, 128, 128, 128),
                              ),
                            ),
                          ],
                        )),
                    SizedBox(
                      width: ScreenAdapt.width(4),
                      height: ScreenAdapt.height(45),
                      child: DecoratedBox(
                        decoration: BoxDecoration(color: Colors.grey),
                      ),
                    ),
                    Container(
                        child: Row(
                      children: [
                        Text(
                          '—',
                          style: TextStyle(
                              fontSize: ScreenAdapt.fontSize(42),
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                        ),
                        SizedBox(width: ScreenAdapt.width(10)),
                        Text(
                          '订单',
                          style: TextStyle(
                            fontSize: ScreenAdapt.fontSize(40),
                            color: Color.fromARGB(255, 128, 128, 128),
                          ),
                        ),
                      ],
                    )),
                    SizedBox(
                      width: ScreenAdapt.width(4),
                      height: ScreenAdapt.height(45),
                      child: DecoratedBox(
                        decoration: BoxDecoration(color: Colors.grey),
                      ),
                    ),
                    Container(
                        child: Row(children: [
                      Text(
                        '—',
                        style: TextStyle(
                            fontSize: ScreenAdapt.fontSize(42),
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                      SizedBox(width: ScreenAdapt.width(10)),
                      Text(
                        '售后单',
                        style: TextStyle(
                          fontSize: ScreenAdapt.fontSize(40),
                          color: Color.fromARGB(255, 128, 128, 128),
                        ),
                      ),
                    ])),
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          clipBehavior: Clip.none, // 允许溢出
          children: [
            UserInfo(),
            Positioned(
              top: ScreenAdapt.height(475),
              left: 0,
              child: Container(
                width: ScreenAdapt.width(1080),
                height: ScreenAdapt.height(2000),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 242, 248, 254),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Center(
                  child: controller.orderList.isNotEmpty
                      ? SizedBox(
                          child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.network(
                              "https://imagesize.zhsc.zxhsd.com/sp/files/acad2fea-3a80-4701-aa7e-d85c211efb57.png",
                              height: ScreenAdapt.height(400),
                              width: ScreenAdapt.width(400),
                              fit: BoxFit.fill,
                            ),
                            SizedBox(height: ScreenAdapt.height(70)),
                            Text(
                              '暂无订单',
                              style: TextStyle(
                                  fontSize: ScreenAdapt.fontSize(48),
                                  color: Colors.black54),
                            ),
                          ],
                        ))
                      : _orderList(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
