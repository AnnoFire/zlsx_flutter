import 'package:flutter/material.dart';
import 'package:zlsx_flutter/app/config/env_config.dart';

/// 图片辅助工具类
class ImageHelper {
  /// 加载网络图片
  /// [url] 原始图片URL
  /// [width] 图片宽度
  /// [height] 图片高度
  /// [fit] 图片填充方式
  /// [errorBuilder] 错误时的构建器
  /// [loadingBuilder] 加载时的构建器
  static Widget network(
    String url, {
    double? width,
    double? height,
    BoxFit? fit,
    Widget Function(BuildContext, Object, StackTrace?)? errorBuilder,
    Widget Function(BuildContext, Widget, ImageChunkEvent?)? loadingBuilder,
  }) {
    // 根据环境获取处理后的URL
    final processedUrl = EnvConfig.getImageUrl(url);

    return Image.network(
      processedUrl,
      width: width,
      height: height,
      fit: fit ?? BoxFit.cover,
      errorBuilder: errorBuilder ??
          (context, error, stackTrace) {
            return Container(
              width: width,
              height: height,
              color: Colors.grey[200],
              child: const Center(
                child: Icon(
                  Icons.broken_image,
                  color: Colors.grey,
                  size: 48,
                ),
              ),
            );
          },
      loadingBuilder: loadingBuilder ??
          (context, child, loadingProgress) {
            if (loadingProgress == null) {
              return child;
            }
            return Container(
              width: width,
              height: height,
              color: Colors.grey[100],
              child: Center(
                child: CircularProgressIndicator(
                  value: loadingProgress.expectedTotalBytes != null
                      ? loadingProgress.cumulativeBytesLoaded /
                          loadingProgress.expectedTotalBytes!
                      : null,
                ),
              ),
            );
          },
    );
  }

  /// 获取处理后的图片URL（不创建Widget）
  /// 适用于需要直接使用URL的场景
  static String getUrl(String originalUrl) {
    return EnvConfig.getImageUrl(originalUrl);
  }
}
