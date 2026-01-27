// To parse this JSON data, do
//
//     final orderCustomerDetailModal = orderCustomerDetailModalFromJson(jsonString);

import 'dart:convert';

OrderCustomerDetailModal orderCustomerDetailModalFromJson(String str) =>
    OrderCustomerDetailModal.fromJson(json.decode(str));

String orderCustomerDetailModalToJson(OrderCustomerDetailModal data) =>
    json.encode(data.toJson());

class OrderCustomerDetailModal {
  int? pageNum;
  int? pageSize;
  int? totalPage;
  int? total;
  List<ListElement>? list;
  bool? hasNextPage;

  OrderCustomerDetailModal({
    this.pageNum,
    this.pageSize,
    this.totalPage,
    this.total,
    this.list,
    this.hasNextPage,
  });

  factory OrderCustomerDetailModal.fromJson(Map<String, dynamic> json) =>
      OrderCustomerDetailModal(
        pageNum: json["pageNum"],
        pageSize: json["pageSize"],
        totalPage: json["totalPage"],
        total: json["total"],
        list: json["list"] == null
            ? []
            : List<ListElement>.from(
                json["list"]!.map((x) => ListElement.fromJson(x))),
        hasNextPage: json["hasNextPage"],
      );

  Map<String, dynamic> toJson() => {
        "pageNum": pageNum,
        "pageSize": pageSize,
        "totalPage": totalPage,
        "total": total,
        "list": list == null
            ? []
            : List<dynamic>.from(list!.map((x) => x.toJson())),
        "hasNextPage": hasNextPage,
      };
}

class ListElement {
  int? id;
  String? acceptMobile;
  String? userId;
  String? userAccount;
  int? activityId;
  ActivityName? activityName;
  String? customerId;
  CustomerName? customerName;
  String? memberName;
  int? memberId;
  int? orderType;
  int? orderPayType;
  int? distributionType;
  DateTime? createTime;
  int? orderPreMoney;
  int? orderActualMoney;
  int? postFee;
  int? orderStatus;
  int? gradeId;
  GradeName? gradeName;
  dynamic preOrderId;
  dynamic preOrderNumber;

  ListElement({
    this.id,
    this.acceptMobile,
    this.userId,
    this.userAccount,
    this.activityId,
    this.activityName,
    this.customerId,
    this.customerName,
    this.memberName,
    this.memberId,
    this.orderType,
    this.orderPayType,
    this.distributionType,
    this.createTime,
    this.orderPreMoney,
    this.orderActualMoney,
    this.postFee,
    this.orderStatus,
    this.gradeId,
    this.gradeName,
    this.preOrderId,
    this.preOrderNumber,
  });

  factory ListElement.fromJson(Map<String, dynamic> json) => ListElement(
        id: json["id"],
        acceptMobile: json["acceptMobile"],
        userId: json["userId"],
        userAccount: json["userAccount"],
        activityId: json["activityId"],
        activityName: activityNameValues.map[json["activityName"]]!,
        customerId: json["customerId"],
        customerName: customerNameValues.map[json["customerName"]]!,
        memberName: json["memberName"],
        memberId: json["memberId"],
        orderType: json["orderType"],
        orderPayType: json["orderPayType"],
        distributionType: json["distributionType"],
        createTime: json["createTime"] == null
            ? null
            : DateTime.parse(json["createTime"]),
        orderPreMoney: json["orderPreMoney"],
        orderActualMoney: json["orderActualMoney"],
        postFee: json["postFee"],
        orderStatus: json["orderStatus"],
        gradeId: json["gradeId"],
        gradeName: gradeNameValues.map[json["gradeName"]]!,
        preOrderId: json["preOrderId"],
        preOrderNumber: json["preOrderNumber"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "acceptMobile": acceptMobile,
        "userId": userId,
        "userAccount": userAccount,
        "activityId": activityId,
        "activityName": activityNameValues.reverse[activityName],
        "customerId": customerId,
        "customerName": customerNameValues.reverse[customerName],
        "memberName": memberName,
        "memberId": memberId,
        "orderType": orderType,
        "orderPayType": orderPayType,
        "distributionType": distributionType,
        "createTime": createTime?.toIso8601String(),
        "orderPreMoney": orderPreMoney,
        "orderActualMoney": orderActualMoney,
        "postFee": postFee,
        "orderStatus": orderStatus,
        "gradeId": gradeId,
        "gradeName": gradeNameValues.reverse[gradeName],
        "preOrderId": preOrderId,
        "preOrderNumber": preOrderNumber,
      };
}

enum ActivityName { THE_0604004 }

final activityNameValues =
    EnumValues({"筛选上下架活动0604-004": ActivityName.THE_0604004});

enum CustomerName { ZL_Y_1 }

final customerNameValues =
    EnumValues({"ZLY测试客户零零一—改测试长度测试1": CustomerName.ZL_Y_1});

enum GradeName { GRADE_NAME_ZLY, ZLY }

final gradeNameValues = EnumValues({
  "zly测试二班": GradeName.GRADE_NAME_ZLY,
  "zly测试一班-改测试测试测试测试测试测": GradeName.ZLY
});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
