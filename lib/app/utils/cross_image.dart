import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class CrossImage extends StatelessWidget {
  final String url;
  final double width;
  final double height;
  final BoxFit fit;
  final BorderRadius? borderRadius;

  const CrossImage({
    super.key,
    required this.url,
    this.width = 100,
    this.height = 100,
    this.fit = BoxFit.cover,
    this.borderRadius,
  });

  Future<Uint8List?> loadImage(String url) async {
    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        return response.bodyBytes;
      }
    } catch (e) {
      print('加载失败: $e');
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Uint8List?>(
      future: loadImage(url),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Container(
            height: height,
            width: double.infinity,
            alignment: Alignment.center,
            child: const CircularProgressIndicator(),
          );
        } else if (snapshot.hasData) {
          return ClipRRect(
            borderRadius: borderRadius ?? BorderRadius.zero,
            child: Image.memory(
              snapshot.data!,
              width: double.infinity,
              height: height,
              fit: fit,
            ),
          );
        } else {
          return Container(
            height: height,
            width: double.infinity,
            alignment: Alignment.center,
            color: Colors.grey[200],
            child: const Text(
              '加载失败',
              style: TextStyle(color: Colors.black54),
            ),
          );
        }
      },
    );
  }
}
