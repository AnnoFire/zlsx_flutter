import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:zlsx_flutter/app/utils/cross_image.dart';
import 'package:zlsx_flutter/app/utils/screen_adapt.dart';

class InfiniteRotation extends StatefulWidget {
  final Uint8List decodeBytes;
  final Duration duration;

  const InfiniteRotation({
    Key? key,
    required this.decodeBytes,
    this.duration = const Duration(seconds: 2),
  }) : super();

  @override
  State<InfiniteRotation> createState() => _InfiniteRotationState(decodeBytes);
}

class _InfiniteRotationState extends State<InfiniteRotation>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _rotation;

  _InfiniteRotationState(Uint8List decodeBytes);

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: widget.duration,
    )..repeat();
    _rotation = Tween(begin: 0.0, end: 1.0).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: ScreenAdapt.width(200),
      height: ScreenAdapt.height(200),
      child: AnimatedBuilder(
        animation: _controller,
        builder: (_, child) {
          return RotationTransition(
            turns: _rotation,
            child: SvgPicture.memory(
              widget.decodeBytes,
              fit: BoxFit.cover,
              width: ScreenAdapt.width(40),
              height: ScreenAdapt.width(40),
            ),
          );
        },
      ),
    );
  }
}

class CustomToast {
  static OverlayEntry? overlayEntry;
  static void show({
    required String msg,
    String iconType = 'none',
    String image = '',
    bool mask = false,
    Duration duration = const Duration(seconds: 2),
  }) {
    dismiss();

    final context = Get.overlayContext;
    if (context == null) {
      debugPrint(
          'Toast Error: Get.overlayContext is null. Are you using GetMaterialApp?');
      return;
    }
    final overlay = Overlay.of(context);

    overlayEntry = OverlayEntry(
      builder: (_) => _ToastWidget(
        msg: msg,
        iconType: iconType,
        image: image,
        mask: mask,
      ),
    );

    overlay.insert(overlayEntry!);
    Future.delayed(duration, () {
      dismiss();
    });
  }

  static void dismiss() {
    overlayEntry?.remove();
    overlayEntry = null;
  }
}

class _ToastWidget extends StatelessWidget {
  final String msg;
  final String iconType;
  final String image;
  final bool mask;

  const _ToastWidget({
    required this.msg,
    required this.iconType,
    required this.image,
    required this.mask,
  }) : super();

  @override
  Widget build(BuildContext context) {
    Widget iconWidget = SizedBox();

    switch (iconType) {
      case 'success':
        Uint8List decodeBytes = base64Decode(
            'PHN2ZyB0PSIxNjM5NTQ4OTYzMjA0IiBjbGFzcz0iaWNvbiIgdmlld0JveD0iMCAwIDEwMjQgMTAyNCIgdmVyc2lvbj0iMS4xIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHAtaWQ9IjQzNDgiIHdpZHRoPSIyMDAiIGhlaWdodD0iMjAwIj48cGF0aCBkPSJNMjE5Ljk1MiA1MTIuNTc2bDIxMC40MzIgMjEwLjQzMi00NS4yNDggNDUuMjU2LTIxMC40MzItMjEwLjQzMnoiIHAtaWQ9IjQzNDkiIGZpbGw9IiNmZmZmZmYiPjwvcGF0aD48cGF0aCBkPSJNNzk5LjY3MiAyNjIuMjY0bDQ1LjI1NiA0NS4yNTYtNDYwLjQ2NCA0NjAuNDY0LTQ1LjI1Ni00NS4yNTZ6IiBwLWlkPSI0MzUwIiBmaWxsPSIjZmZmZmZmIj48L3BhdGg+PC9zdmc+');
        iconWidget = SvgPicture.memory(
          decodeBytes,
          fit: BoxFit.cover,
          width: ScreenAdapt.width(40),
          height: ScreenAdapt.width(40),
        );
        break;
      case 'error':
        Uint8List decodeBytes = base64Decode(
            'PHN2ZyB0PSIxNjM5NTUxMDU1MTgzIiBjbGFzcz0iaWNvbiIgdmlld0JveD0iMCAwIDEwMjQgMTAyNCIgdmVyc2lvbj0iMS4xIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHAtaWQ9IjE0MDc2IiB3aWR0aD0iMjAwIiBoZWlnaHQ9IjIwMCI+PHBhdGggZD0iTTUxMiA2NEMyNjQuNTggNjQgNjQgMjY0LjU4IDY0IDUxMnMyMDAuNTggNDQ4IDQ0OCA0NDggNDQ4LTIwMC41OCA0NDgtNDQ4Uzc1OS40MiA2NCA1MTIgNjR6IG0wIDc1MmEzNiAzNiAwIDEgMSAzNi0zNiAzNiAzNiAwIDAgMS0zNiAzNnogbTUxLjgzLTU1MS45NUw1NDggNjM2YTM2IDM2IDAgMCAxLTcyIDBsLTE1LjgzLTM3MS45NWMtMC4xLTEuMzMtMC4xNy0yLjY4LTAuMTctNC4wNWE1MiA1MiAwIDAgMSAxMDQgMGMwIDEuMzctMC4wNyAyLjcyLTAuMTcgNC4wNXoiIHAtaWQ9IjE0MDc3IiBmaWxsPSIjZmZmZmZmIj48L3BhdGg+PC9zdmc+');
        iconWidget = SvgPicture.memory(
          decodeBytes,
          fit: BoxFit.cover,
          width: ScreenAdapt.width(40),
          height: ScreenAdapt.width(40),
        );
        break;
      case 'loading':
        Uint8List decodeBytes = base64Decode(
            'PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMjAiIGhlaWdodD0iMTIwIiB2aWV3Qm94PSIwIDAgMTAwIDEwMCI+PHBhdGggZmlsbD0ibm9uZSIgZD0iTTAgMGgxMDB2MTAwSDB6Ii8+PHJlY3Qgd2lkdGg9IjciIGhlaWdodD0iMjAiIHg9IjQ2LjUiIHk9IjQwIiBmaWxsPSIjRTlFOUU5IiByeD0iNSIgcnk9IjUiIHRyYW5zZm9ybT0idHJhbnNsYXRlKDAgLTMwKSIvPjxyZWN0IHdpZHRoPSI3IiBoZWlnaHQ9IjIwIiB4PSI0Ni41IiB5PSI0MCIgZmlsbD0iIzk4OTY5NyIgcng9IjUiIHJ5PSI1IiB0cmFuc2Zvcm09InJvdGF0ZSgzMCAxMDUuOTggNjUpIi8+PHJlY3Qgd2lkdGg9IjciIGhlaWdodD0iMjAiIHg9IjQ2LjUiIHk9IjQwIiBmaWxsPSIjOUI5OTlBIiByeD0iNSIgcnk9IjUiIHRyYW5zZm9ybT0icm90YXRlKDYwIDc1Ljk4IDY1KSIvPjxyZWN0IHdpZHRoPSI3IiBoZWlnaHQ9IjIwIiB4PSI0Ni41IiB5PSI0MCIgZmlsbD0iI0EzQTFBMiIgcng9IjUiIHJ5PSI1IiB0cmFuc2Zvcm09InJvdGF0ZSg5MCA2NSA2NSkiLz48cmVjdCB3aWR0aD0iNyIgaGVpZ2h0PSIyMCIgeD0iNDYuNSIgeT0iNDAiIGZpbGw9IiNBQkE5QUEiIHJ4PSI1IiByeT0iNSIgdHJhbnNmb3JtPSJyb3RhdGUoMTIwIDU4LjY2IDY1KSIvPjxyZWN0IHdpZHRoPSI3IiBoZWlnaHQ9IjIwIiB4PSI0Ni41IiB5PSI0MCIgZmlsbD0iI0IyQjJCMiIgcng9IjUiIHJ5PSI1IiB0cmFuc2Zvcm09InJvdGF0ZSgxNTAgNTQuMDIgNjUpIi8+PHJlY3Qgd2lkdGg9IjciIGhlaWdodD0iMjAiIHg9IjQ2LjUiIHk9IjQwIiBmaWxsPSIjQkFCOEI5IiByeD0iNSIgcnk9IjUiIHRyYW5zZm9ybT0icm90YXRlKDE4MCA1MCA2NSkiLz48cmVjdCB3aWR0aD0iNyIgaGVpZ2h0PSIyMCIgeD0iNDYuNSIgeT0iNDAiIGZpbGw9IiNDMkMwQzEiIHJ4PSI1IiByeT0iNSIgdHJhbnNmb3JtPSJyb3RhdGUoLTE1MCA0NS45OCA2NSkiLz48cmVjdCB3aWR0aD0iNyIgaGVpZ2h0PSIyMCIgeD0iNDYuNSIgeT0iNDAiIGZpbGw9IiNDQkNCQ0IiIHJ4PSI1IiByeT0iNSIgdHJhbnNmb3JtPSJyb3RhdGUoLTEyMCA0MS4zNCA2NSkiLz48cmVjdCB3aWR0aD0iNyIgaGVpZ2h0PSIyMCIgeD0iNDYuNSIgeT0iNDAiIGZpbGw9IiNEMkQyRDIiIHJ4PSI1IiByeT0iNSIgdHJhbnNmb3JtPSJyb3RhdGUoLTkwIDM1IDY1KSIvPjxyZWN0IHdpZHRoPSI3IiBoZWlnaHQ9IjIwIiB4PSI0Ni41IiB5PSI0MCIgZmlsbD0iI0RBREFEQSIgcng9IjUiIHJ5PSI1IiB0cmFuc2Zvcm09InJvdGF0ZSgtNjAgMjQuMDIgNjUpIi8+PHJlY3Qgd2lkdGg9IjciIGhlaWdodD0iMjAiIHg9IjQ2LjUiIHk9IjQwIiBmaWxsPSIjRTJFMkUyIiByeD0iNSIgcnk9IjUiIHRyYW5zZm9ybT0icm90YXRlKC0zMCAtNS45OCA2NSkiLz48L3N2Zz4=');
        // iconWidget = InfiniteRotation(
        //   child: SvgPicture.memory(
        //     decodeBytes,
        //     fit: BoxFit.cover,
        //     width: ScreenAdapt.width(60),
        //     height: ScreenAdapt.width(60),
        //   ),
        // );
        iconWidget = InfiniteRotation(decodeBytes: decodeBytes);
        break;
      case 'none':
        break;
      default:
        break;
    }

    return Material(
      color: Colors.transparent,
      child: Stack(
        children: [
          if (mask)
            Positioned.fill(
              child: Container(
                color: Colors.black54.withAlpha(100),
              ),
            ),
          Center(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.symmetric(
                  horizontal: ScreenAdapt.width(30),
                  vertical: ScreenAdapt.height(12)),
              decoration: BoxDecoration(
                color: Colors.black.withAlpha(200),
                borderRadius: BorderRadius.circular(ScreenAdapt.width(8)),
              ),
              constraints: BoxConstraints(
                maxHeight: ScreenAdapt.height(360),
                maxWidth: ScreenAdapt.width(360),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  image != ''
                      ? Padding(
                          padding: EdgeInsets.only(top: ScreenAdapt.height(12)),
                          child: CrossImage(
                            url:image,
                            width: ScreenAdapt.width(40),
                            height: ScreenAdapt.height(40),
                            fit: BoxFit.cover,
                          ),
                          // child: Image.network(
                          //   image,
                          //   height: ScreenAdapt.height(40),
                          //   width: ScreenAdapt.width(40),
                          //   fit: BoxFit.cover,
                          // ),
                        )
                      : iconWidget,
                  Padding(
                    padding: EdgeInsets.only(
                      top: ScreenAdapt.height(12),
                      bottom: ScreenAdapt.height(12),
                    ),
                    child: Text(
                      msg,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: ScreenAdapt.fontSize(32),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
