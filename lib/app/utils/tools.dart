// 日期格式转化
String formatDate(date) {
  final res = date != null ? date.substring(0, 16).replaceAll('-', ".") : '';
  return res;
}
