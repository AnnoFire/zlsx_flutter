import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:zlsx_flutter/app/modules/home/views/user_Info.dart';
import 'package:zlsx_flutter/app/utils/keepAliveWrapper.dart';
import 'package:zlsx_flutter/app/utils/screenAdapt.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  Widget _orderList() {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 10,
      padding: EdgeInsets.all(ScreenAdapt.height(40)),
      itemBuilder: (context, index) {
        return Card(
          margin: EdgeInsets.only(bottom: ScreenAdapt.height(40)),
          child: ListTile(
            title: Text('学军小学23秋读书活动'),
            subtitle: Row(
              children: [
                Icon(Icons.person_outline, size: 16),
                SizedBox(width: 4),
                Text('客户：学军小学'),
              ],
            ),
            trailing: Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () => print("点击第${index + 1}项"),
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
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Center(
                  child: _orderList(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
