/// 环境配置类
class EnvConfig {
  // 使用 Flutter 的编译时常量自动判断环境
  // Debug 模式 (flutter run): 开发环境
  // Release 模式 (flutter build): 生产环境

  //flutter 的三种编译模式有不同的环境变量
  static const bool isProd = bool.fromEnvironment('dart.vm.product');

  /// 获取API基础URL
  /// 生产环境: https://xyhd.zxhsd.com/gateway
  /// 开发环境: https://dev.app.zxhsd.com/gateway
  static String get apiBaseUrl {
    return 'https://${isProd ? "xyhd.zxhsd.com" : "dev.app.zxhsd.com"}/gateway';
  }

  /// 判断是否为开发环境
  static bool get isDev => !isProd;

  /// 获取当前环境名称
  static String get envName => isProd ? '生产环境' : '开发环境';
}
