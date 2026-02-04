import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zlsx_flutter/app/utils/screen_adapt.dart';
import '../../controllers/classes_controller.dart';

class ClassesSearchBar extends GetView<ClassesController> {
  const ClassesSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: ScreenAdapt.height(160),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(ScreenAdapt.width(20)),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              spreadRadius: 1,
              blurRadius: 5,
              offset: const Offset(1, 1),
            ),
          ],
        ),
        margin: EdgeInsets.fromLTRB(ScreenAdapt.width(50),
            ScreenAdapt.height(40), ScreenAdapt.width(50), 0),
        padding: EdgeInsets.symmetric(horizontal: ScreenAdapt.width(30)),
        child: Row(
          children: [
            SizedBox(width: ScreenAdapt.width(20)),
            Image.network(
              "https://imagesize.zhsc.zxhsd.com/sp/files/a6b7ff6d-9afd-4ab6-95c3-2359d8cc0b8e.png",
              width: ScreenAdapt.width(56),
            ),
            SizedBox(width: ScreenAdapt.width(40)),
            Expanded(
              child: TextField(
                controller: controller.searchController,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintStyle: TextStyle(
                      color: const Color.fromARGB(255, 153, 153, 153),
                      fontSize: ScreenAdapt.fontSize(44),
                      fontWeight: FontWeight.w500),
                  hintText: '请输入班级名称',
                ),
              ),
            ),
            Obx(() {
              return controller.searchText.value.isNotEmpty
                  ? GestureDetector(
                      onTap: () {
                        controller.searchController.clear();
                        debugPrint('111');
                      },
                      child: Image.network(
                        "https://imagesize.zhsc.zxhsd.com/sp/files/abe810b1-f590-4cad-8054-7a5d0657a284.png",
                        width: ScreenAdapt.width(42),
                      ),
                    )
                  : const SizedBox.shrink();
            }),
            SizedBox(width: ScreenAdapt.width(20)),
            Container(
                decoration: BoxDecoration(
                  border: Border(
                    left: BorderSide(
                      color: Color.fromARGB(255, 55, 154, 251),
                      width: ScreenAdapt.width(1),
                    ),
                  ),
                ),
                padding: EdgeInsets.fromLTRB(
                    ScreenAdapt.width(20), 0, ScreenAdapt.width(20), 0),
                child: Text(
                  '搜索',
                  style: TextStyle(
                    fontSize: ScreenAdapt.fontSize(44),
                    fontWeight: FontWeight.w500,
                    color: const Color.fromARGB(255, 55, 154, 251),
                  ),
                ))
          ],
        ));
  }
}
