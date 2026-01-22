enum OrderType {
  self(1),
  force(2);

  final int value;
  const OrderType(this.value);

  // 自动按顺序赋值
  // final int? _value;
  // const Status([this._value]);

  // int get code {
  //   // 如果手动指定则直接返回
  //   if (_value != null) return _value!;
  //   // 否则按 index + 基准偏移来生成
  //   return index + 1;
  // }
}

enum ChargeType {
  preCharge(1),
  once(2);

  final int value;
  const ChargeType(this.value);
}

const Map<String, String> activityStatusMap = {
  '0': "草稿",
  '1': "待审核",
  '2': "待发布",
  '3': "未开始",
  '4': "进行中",
  '5': "已结束",
  '6': "已下架",
  '97': "数据生成中",
  '98': "数据生成失败",
  '99': "审核失败",
};

const Map<String, String> distributionTypeMap = {
  '1': "统一配送",
  '2': "按单配送",
};
