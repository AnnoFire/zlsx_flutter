# 环境配置使用说明

## 🎯 自动环境切换

项目使用 Flutter 的编译时常量自动判断环境,**无需手动修改代码**!

## 📱 使用方法

### 开发调试(自动使用开发环境)
```bash
flutter run
```
- 自动使用开发环境
- API: `https://dev.app.zxhsd.com/gateway`

### 打包生产版本(自动使用生产环境)
```bash
# Android APK
flutter build apk

# Android App Bundle
flutter build appbundle

# iOS
flutter build ios
```
- 自动使用生产环境
- API: `https://xyhd.zxhsd.com/gateway`

## 🔧 工作原理

使用 `bool.fromEnvironment('dart.vm.product')` 来判断:
- **Debug 模式** (`flutter run`): `isProd = false` → 开发环境
- **Release 模式** (`flutter build`): `isProd = true` → 生产环境

## 💡 在代码中使用

```dart
import 'package:zlsx_flutter/app/config/env_config.dart';

// 获取 API Base URL (自动根据编译模式选择)
String baseUrl = EnvConfig.apiBaseUrl;

// 判断当前环境
if (EnvConfig.isDev) {
  print('当前是开发环境');
}

if (EnvConfig.isProd) {
  print('当前是生产环境');
}

// 获取环境名称
print(EnvConfig.envName); // "开发环境" 或 "生产环境"
```

## 🚀 优势

✅ **零配置**: 不需要手动修改代码切换环境  
✅ **自动切换**: 根据编译模式自动选择正确的环境  
✅ **安全**: 避免误将开发环境打包到生产  
✅ **简单**: 和你的 JS 代码逻辑一致  

## ⚠️ 注意事项

1. **开发时**: 直接 `flutter run`,自动使用开发环境
2. **打包时**: 使用 `flutter build`,自动使用生产环境
3. **测试生产环境**: 可以使用 `flutter run --release` 在真机上测试生产环境配置

## 🔍 验证当前环境

在应用启动时添加日志查看:
```dart
void main() {
  print('当前环境: ${EnvConfig.envName}');
  print('API地址: ${EnvConfig.apiBaseUrl}');
  runApp(MyApp());
}
```
