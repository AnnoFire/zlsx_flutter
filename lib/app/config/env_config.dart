/// 环境配置类
class EnvConfig {
  // 环境类型枚举
  static const String dev = 'dev'; // 开发环境
  static const String prod = 'prod'; // 生产环境

  // 当前环境 - 修改这里来切换环境
  static const String currentEnv = dev;

  // 开发环境代理服务器地址
  // 注意：模拟器使用 10.0.2.2，真机使用电脑的局域网IP
  static const String devProxyServer = 'http://10.0.2.2:3000';

  /// 判断是否为开发环境
  static bool get isDev => currentEnv == dev;

  /// 判断是否为生产环境
  static bool get isProd => currentEnv == prod;

  /// 获取图片URL
  /// [originalUrl] 原始图片URL
  /// 返回处理后的URL：开发环境返回代理URL，生产环境返回原始URL
  static String getImageUrl(String originalUrl) {
    if (isDev) {
      // 开发环境：通过代理服务器请求
      return '$devProxyServer/proxy?url=$originalUrl';
    } else {
      // 生产环境：直接请求原始URL
      return originalUrl;
    }
  }

  /// 获取API基础URL
  static String get apiBaseUrl {
    if (isDev) {
      return 'https://dev.app.zxhsd.com/gateway';
    } else {
      return 'https://app.zxhsd.com/gateway';
    }
  }
}
