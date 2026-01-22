// To parse this JSON data, do
//
//     final orderListModal = orderListModalFromJson(jsonString);

import 'dart:convert';

OrderListModel orderListModelFromJson(String str) =>
    OrderListModel.fromJson(json.decode(str));

String orderListModelToJson(OrderListModel data) => json.encode(data.toJson());

class OrderListModel {
  DateTime? createTime;
  DateTime? updateTime;
  dynamic remark;
  int? activityId;
  String? activityNumber;
  String? activityName;
  String? customerName;
  String? customerCode;
  int? customerId;
  int? chargeType;
  dynamic chargeBeginDate;
  dynamic chargeEndDate;
  int? orderType;
  dynamic orderBeginDate;
  dynamic orderEndDate;
  String? distributionType;
  int? unifiedDistribution;
  int? orderDistribution;
  dynamic contactName;
  dynamic contactPhone;
  dynamic address;
  String? importFileId;
  dynamic importFileName;
  String? status;
  String? bookCount;
  String? preOrderCount;
  String? orderCount;
  String? afterSaleCount;
  String? confirmStatus;
  int? expressFee;
  dynamic operLogList;
  int? organizationId;
  String? organization;
  dynamic organizationIds;
  dynamic settlementSubject;
  String? serviceTel;
  dynamic weCom;
  dynamic description;
  dynamic isNeedCheck;
  dynamic isNeedAddress;
  int? isRefundOpen;
  dynamic refundBeginDate;
  dynamic refundEndDate;
  String? khbh;
  dynamic isShownPrice;
  int? isShownPopup;
  dynamic popupId;
  dynamic popupContent;
  dynamic isShownIsbn;
  List<CustomerList>? customerList;
  int? autoShelf;

  OrderListModel({
    this.createTime,
    this.updateTime,
    this.remark,
    this.activityId,
    this.activityNumber,
    this.activityName,
    this.customerName,
    this.customerCode,
    this.customerId,
    this.chargeType,
    this.chargeBeginDate,
    this.chargeEndDate,
    this.orderType,
    this.orderBeginDate,
    this.orderEndDate,
    this.distributionType,
    this.unifiedDistribution,
    this.orderDistribution,
    this.contactName,
    this.contactPhone,
    this.address,
    this.importFileId,
    this.importFileName,
    this.status,
    this.bookCount,
    this.preOrderCount,
    this.orderCount,
    this.afterSaleCount,
    this.confirmStatus,
    this.expressFee,
    this.operLogList,
    this.organizationId,
    this.organization,
    this.organizationIds,
    this.settlementSubject,
    this.serviceTel,
    this.weCom,
    this.description,
    this.isNeedCheck,
    this.isNeedAddress,
    this.isRefundOpen,
    this.refundBeginDate,
    this.refundEndDate,
    this.khbh,
    this.isShownPrice,
    this.isShownPopup,
    this.popupId,
    this.popupContent,
    this.isShownIsbn,
    this.customerList,
    this.autoShelf,
  });

  factory OrderListModel.fromJson(Map<String, dynamic> json) => OrderListModel(
        createTime: json["createTime"] == null
            ? null
            : DateTime.parse(json["createTime"]),
        updateTime: json["updateTime"] == null
            ? null
            : DateTime.parse(json["updateTime"]),
        remark: json["remark"],
        activityId: json["activityId"],
        activityNumber: json["activityNumber"],
        activityName: json["activityName"],
        customerName: json["customerName"],
        customerCode: json["customerCode"],
        customerId: json["customerId"],
        chargeType: json["chargeType"],
        chargeBeginDate: json["chargeBeginDate"],
        chargeEndDate: json["chargeEndDate"],
        orderType: json["orderType"],
        orderBeginDate: json["orderBeginDate"],
        orderEndDate: json["orderEndDate"],
        distributionType: json["distributionType"],
        unifiedDistribution: json["unifiedDistribution"],
        orderDistribution: json["orderDistribution"],
        contactName: json["contactName"],
        contactPhone: json["contactPhone"],
        address: json["address"],
        importFileId: json["importFileId"],
        importFileName: json["importFileName"],
        status: json["status"],
        bookCount: json["bookCount"],
        preOrderCount: json["preOrderCount"],
        orderCount: json["orderCount"],
        afterSaleCount: json["afterSaleCount"],
        confirmStatus: json["confirmStatus"],
        expressFee: json["expressFee"],
        operLogList: json["operLogList"],
        organizationId: json["organizationId"],
        organization: json["organization"],
        organizationIds: json["organizationIds"],
        settlementSubject: json["settlementSubject"],
        serviceTel: json["serviceTel"],
        weCom: json["weCom"],
        description: json["description"],
        isNeedCheck: json["isNeedCheck"],
        isNeedAddress: json["isNeedAddress"],
        isRefundOpen: json["isRefundOpen"],
        refundBeginDate: json["refundBeginDate"],
        refundEndDate: json["refundEndDate"],
        khbh: json["khbh"],
        isShownPrice: json["isShownPrice"],
        isShownPopup: json["isShownPopup"],
        popupId: json["popupId"],
        popupContent: json["popupContent"],
        isShownIsbn: json["isShownIsbn"],
        customerList: json["customerList"] == null
            ? []
            : List<CustomerList>.from(
                json["customerList"]!.map((x) => CustomerList.fromJson(x))),
        autoShelf: json["autoShelf"],
      );

  Map<String, dynamic> toJson() => {
        "createTime": createTime?.toIso8601String(),
        "updateTime": updateTime?.toIso8601String(),
        "remark": remark,
        "activityId": activityId,
        "activityNumber": activityNumber,
        "activityName": activityName,
        "customerName": customerName,
        "customerCode": customerCode,
        "customerId": customerId,
        "chargeType": chargeType,
        "chargeBeginDate": chargeBeginDate,
        "chargeEndDate": chargeEndDate,
        "orderType": orderType,
        "orderBeginDate": orderBeginDate,
        "orderEndDate": orderEndDate,
        "distributionType": distributionType,
        "unifiedDistribution": unifiedDistribution,
        "orderDistribution": orderDistribution,
        "contactName": contactName,
        "contactPhone": contactPhone,
        "address": address,
        "importFileId": importFileId,
        "importFileName": importFileName,
        "status": status,
        "bookCount": bookCount,
        "preOrderCount": preOrderCount,
        "orderCount": orderCount,
        "afterSaleCount": afterSaleCount,
        "confirmStatus": confirmStatus,
        "expressFee": expressFee,
        "operLogList": operLogList,
        "organizationId": organizationId,
        "organization": organization,
        "organizationIds": organizationIds,
        "settlementSubject": settlementSubject,
        "serviceTel": serviceTel,
        "weCom": weCom,
        "description": description,
        "isNeedCheck": isNeedCheck,
        "isNeedAddress": isNeedAddress,
        "isRefundOpen": isRefundOpen,
        "refundBeginDate": refundBeginDate,
        "refundEndDate": refundEndDate,
        "khbh": khbh,
        "isShownPrice": isShownPrice,
        "isShownPopup": isShownPopup,
        "popupId": popupId,
        "popupContent": popupContent,
        "isShownIsbn": isShownIsbn,
        "customerList": customerList == null
            ? []
            : List<dynamic>.from(customerList!.map((x) => x.toJson())),
        "autoShelf": autoShelf,
      };

  void operator [](String other) {}
}

class CustomerList {
  dynamic createTime;
  dynamic updateTime;
  dynamic remark;
  int? id;
  String? code;
  String? name;
  dynamic areaCode;
  dynamic serviceTel;
  dynamic type;
  dynamic organizationId;
  dynamic uniqueRule;
  dynamic organizationIds;
  dynamic areaCodeList;
  dynamic ids;
  dynamic customerTag;
  dynamic customerTypeName;
  dynamic areaName;
  dynamic organization;
  dynamic classCount;

  CustomerList({
    this.createTime,
    this.updateTime,
    this.remark,
    this.id,
    this.code,
    this.name,
    this.areaCode,
    this.serviceTel,
    this.type,
    this.organizationId,
    this.uniqueRule,
    this.organizationIds,
    this.areaCodeList,
    this.ids,
    this.customerTag,
    this.customerTypeName,
    this.areaName,
    this.organization,
    this.classCount,
  });

  factory CustomerList.fromJson(Map<String, dynamic> json) => CustomerList(
        createTime: json["createTime"],
        updateTime: json["updateTime"],
        remark: json["remark"],
        id: json["id"],
        code: json["code"],
        name: json["name"],
        areaCode: json["areaCode"],
        serviceTel: json["serviceTel"],
        type: json["type"],
        organizationId: json["organizationId"],
        uniqueRule: json["uniqueRule"],
        organizationIds: json["organizationIds"],
        areaCodeList: json["areaCodeList"],
        ids: json["ids"],
        customerTag: json["customerTag"],
        customerTypeName: json["customerTypeName"],
        areaName: json["areaName"],
        organization: json["organization"],
        classCount: json["classCount"],
      );

  Map<String, dynamic> toJson() => {
        "createTime": createTime,
        "updateTime": updateTime,
        "remark": remark,
        "id": id,
        "code": code,
        "name": name,
        "areaCode": areaCode,
        "serviceTel": serviceTel,
        "type": type,
        "organizationId": organizationId,
        "uniqueRule": uniqueRule,
        "organizationIds": organizationIds,
        "areaCodeList": areaCodeList,
        "ids": ids,
        "customerTag": customerTag,
        "customerTypeName": customerTypeName,
        "areaName": areaName,
        "organization": organization,
        "classCount": classCount,
      };
}
