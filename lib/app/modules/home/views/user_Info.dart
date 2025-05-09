import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zlsx_flutter/app/utils/screenAdapt.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      width: ScreenAdapt.width(1080),
      child: Container(
        height: ScreenAdapt.height(560),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                'https://imagesize.zhsc.zxhsd.com/sp/files/9cce7ae1-9efe-4dc5-b712-0764ff9068c8.png'),
            fit: BoxFit.fitWidth,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: ScreenAdapt.width(42),
            vertical: ScreenAdapt.height(32),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: ScreenAdapt.height(90)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            left: ScreenAdapt.width(20),
                            right: ScreenAdapt.width(20)),
                        child: Text(
                          '徐冬火',
                          style: TextStyle(
                            fontSize: ScreenAdapt.fontSize(60),
                            fontWeight: FontWeight.w500,
                            color: const Color.fromRGBO(255, 255, 255, 1),
                          ),
                        ),
                      ),
                      TextButton.icon(
                        style: TextButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6),
                          ),
                          padding: EdgeInsets.zero,
                          minimumSize: Size(
                              ScreenAdapt.width(240), ScreenAdapt.height(60)),
                          backgroundColor:
                              const Color.fromRGBO(200, 237, 255, 0.326),
                        ),
                        onPressed: () => Get.toNamed('/account/logoff'),
                        icon: Image.network(
                          "https://imagesize.zhsc.zxhsd.com/sp/files/de39f956-07fb-4e89-8699-1f3da57b1195.png",
                          width: ScreenAdapt.width(45),
                          height: ScreenAdapt.height(45),
                          color: const Color.fromRGBO(255, 255, 255, 1),
                        ),
                        label: Text('退出登录',
                            style: TextStyle(
                                color: const Color.fromRGBO(255, 255, 255, 1))),
                      ),
                    ],
                  ),
                  OutlinedButton.icon(
                    style: OutlinedButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 14),
                      minimumSize:
                          Size(ScreenAdapt.width(210), ScreenAdapt.height(100)),
                      side: BorderSide(
                        color: const Color.fromRGBO(255, 255, 255, 0.851),
                      ),
                    ),
                    icon: Image.network(
                      'https://imagesize.zhsc.zxhsd.com/sp/files/2ce0d2e3-bb59-4451-b86d-edd90c388257.png',
                      width: ScreenAdapt.width(45),
                      height: ScreenAdapt.height(45),
                      color: const Color.fromRGBO(255, 255, 255, 1),
                    ),
                    label: Text(
                      '扫码查看订单',
                      style: TextStyle(
                          color: const Color.fromRGBO(255, 255, 255, 1)),
                    ),
                    onPressed: () => print('扫码'),
                  ),
                ],
              ),
              SizedBox(height: ScreenAdapt.height(32)),
              // 用户信息
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Image.network(
                          "https://imagesize.zhsc.zxhsd.com/sp/files/9ce0ae59-3f48-4203-b0e8-6f654ac7c9ce.png",
                          width: ScreenAdapt.width(60),
                          height: ScreenAdapt.height(60),
                        ),
                        SizedBox(width: ScreenAdapt.width(20)),
                        SizedBox(
                          width: ScreenAdapt.width(400),
                          child: Text(
                            '13616816255',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            softWrap: false,
                            style: TextStyle(
                              fontSize: ScreenAdapt.fontSize(48),
                              color: const Color.fromRGBO(255, 255, 255, 1),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: ScreenAdapt.height(10)),
                    Row(
                      children: [
                        Image.network(
                          "https://imagesize.zhsc.zxhsd.com/sp/files/e80f391b-5eae-415f-ba9d-a3051da9b8b2.png",
                          width: ScreenAdapt.width(60),
                          height: ScreenAdapt.height(60),
                        ),
                        SizedBox(width: ScreenAdapt.width(20)),
                        SizedBox(
                          width: ScreenAdapt.width(400),
                          child: Text(
                            '省店',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            softWrap: false,
                            style: TextStyle(
                              fontSize: ScreenAdapt.fontSize(48),
                              color: const Color.fromRGBO(255, 255, 255, 1),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
