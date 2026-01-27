import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:zlsx_flutter/app/models/constants.dart';
import 'package:zlsx_flutter/app/models/rule_details_model.dart';
import 'package:zlsx_flutter/app/utils/screen_adapt.dart';
import 'package:zlsx_flutter/app/utils/tools.dart';

import '../controllers/rule_details_controller.dart';

class RuleDetailsView extends GetView<RuleDetailsController> {
  const RuleDetailsView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 242, 248, 255),
            ),
            child: Column(children: [
              SizedBox(height: ScreenAdapt.height(160)),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(
                      left: ScreenAdapt.width(50),
                      bottom: ScreenAdapt.height(50)),
                  child: Text(
                    '活动规则明细',
                    style: TextStyle(
                        fontSize: ScreenAdapt.fontSize(80),
                        color: Colors.black,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: ScreenAdapt.width(42)),
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
                      child: Obx(
                        () => Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(
                                    ScreenAdapt.width(40),
                                    ScreenAdapt.height(40),
                                    ScreenAdapt.width(40),
                                    ScreenAdapt.width(10)),
                                child: Text(
                                  // 活动名称
                                  controller.activityName ?? '',
                                  style: TextStyle(
                                      fontSize: ScreenAdapt.fontSize(56),
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(ScreenAdapt.height(40)),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text('活动状态',
                                          style: TextStyle(
                                              fontSize:
                                                  ScreenAdapt.fontSize(48),
                                              fontWeight: FontWeight.w500)),
                                      Text(
                                        activityStatusMap[
                                                controller.data?.status] ??
                                            '',
                                        style: TextStyle(
                                          fontSize: ScreenAdapt.fontSize(50),
                                        ),
                                      ),
                                    ]),
                              ),
                              Divider(
                                indent: ScreenAdapt.width(40),
                                endIndent: ScreenAdapt.width(40),
                                height: 1,
                                color: const Color.fromARGB(255, 230, 230, 230),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(
                                    ScreenAdapt.width(40),
                                    ScreenAdapt.height(40),
                                    ScreenAdapt.width(40),
                                    ScreenAdapt.height(40)),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('所属学校',
                                          style: TextStyle(
                                              fontSize:
                                                  ScreenAdapt.fontSize(48),
                                              fontWeight: FontWeight.w500)),
                                      SizedBox(width: ScreenAdapt.width(100)),
                                      Expanded(
                                        child: Text(
                                          controller.customerNameList.join(","),
                                          style: TextStyle(
                                              fontSize:
                                                  ScreenAdapt.fontSize(50)),
                                        ),
                                      ),
                                    ]),
                              ),
                              Divider(
                                indent: ScreenAdapt.width(40),
                                endIndent: ScreenAdapt.width(40),
                                height: 1,
                                color: const Color.fromARGB(255, 230, 230, 230),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(
                                    ScreenAdapt.width(40),
                                    ScreenAdapt.height(40),
                                    ScreenAdapt.width(40),
                                    ScreenAdapt.height(40)),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        '下单模式',
                                        style: TextStyle(
                                            fontSize: ScreenAdapt.fontSize(48),
                                            fontWeight: FontWeight.w500),
                                      ),
                                      Text(
                                        controller.orderType == null
                                            ? ''
                                            : controller.orderType == 1
                                                ? "自主下单"
                                                : "强制下单",
                                        style: TextStyle(
                                            fontSize: ScreenAdapt.fontSize(50)),
                                      ),
                                    ]),
                              ),
                              Divider(
                                indent: ScreenAdapt.width(40),
                                endIndent: ScreenAdapt.width(40),
                                height: 1,
                                color: const Color.fromARGB(255, 230, 230, 230),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(
                                    ScreenAdapt.width(40),
                                    ScreenAdapt.height(40),
                                    ScreenAdapt.width(40),
                                    ScreenAdapt.width(40)),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        '付款模式',
                                        style: TextStyle(
                                            fontSize: ScreenAdapt.fontSize(48),
                                            fontWeight: FontWeight.w500),
                                      ),
                                      Text(
                                        controller.chargeType == null
                                            ? ''
                                            : controller.chargeType == 1
                                                ? "预收尾款"
                                                : "单次付清",
                                        style: TextStyle(
                                            fontSize: ScreenAdapt.fontSize(50)),
                                      ),
                                    ]),
                              ),
                              Divider(
                                indent: ScreenAdapt.width(40),
                                endIndent: ScreenAdapt.width(40),
                                height: 1,
                                color: const Color.fromARGB(255, 230, 230, 230),
                              ),
                              Padding(
                                padding: EdgeInsets.all(ScreenAdapt.height(40)),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('活动时间',
                                          style: TextStyle(
                                              fontSize:
                                                  ScreenAdapt.fontSize(48),
                                              fontWeight: FontWeight.w500)),
                                      Column(children: [
                                        Text(
                                          style: TextStyle(
                                              fontSize:
                                                  ScreenAdapt.fontSize(48)),
                                          controller.orderBeginDate == null
                                              ? '--'
                                              : '${controller.orderBeginDate.toString()} 开始',
                                        ),
                                        Text(
                                            style: TextStyle(
                                                fontSize:
                                                    ScreenAdapt.fontSize(48)),
                                            controller.orderEndDate == null
                                                ? '--'
                                                : '${controller.orderEndDate.toString()} 结束')
                                      ])
                                    ]),
                              ),
                            ]),
                      )))
            ])),
      ),
    );
  }
}

extension on Rxn<RuleDetailsModel> {
  get status => null;
}
