import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:zlsx_flutter/app/utils/screen_adapt.dart';

import '../controllers/rule_details_controller.dart';

class RuleDetailsView extends GetView<RuleDetailsController> {
  const RuleDetailsView({super.key});
  @override
  Widget build(BuildContext context) {
    final res = controller.details;
    return Scaffold(
      body: Center(
        child: Container(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 242, 248, 254),
            ),
            child: Column(children: [
              SizedBox(height: ScreenAdapt.height(150)),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(
                      left: ScreenAdapt.width(50),
                      bottom: ScreenAdapt.height(50)),
                  child: Text(
                    '活动规则详情',
                    style: TextStyle(
                        fontSize: ScreenAdapt.fontSize(80),
                        color: Colors.black,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: ScreenAdapt.width(28)),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.circular(ScreenAdapt.width(16)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12.withValues(),
                          spreadRadius: 1,
                          blurRadius: 5,
                          offset: Offset(1, 1),
                        ),
                      ],
                    ),
                    child: Column(children: [
                      Text('1'),
                      Divider(
                        height: 1,
                        color: Colors.grey,
                      ),
                      Text('2'),
                    ]),
                  )),
            ])),
      ),
    );
  }
}
