// To parse this JSON data, do
//
//     final RuleDetailsModel = ruleDetailsModalFromJson(jsonString);

import 'dart:convert';

RuleDetailsModel ruleDetailsModalFromJson(String str) =>
    RuleDetailsModel.fromJson(json.decode(str));

String ruleDetailsModalToJson(RuleDetailsModel data) =>
    json.encode(data.toJson());

class RuleDetailsModel {
  DateTime? createTime;
  DateTime? updateTime;
  dynamic remark;
  int? activityId;
  String? activityNumber;
  String? activityName;
  dynamic customerName;
  dynamic customerCode;
  int? customerId;
  int? chargeType;
  dynamic chargeBeginDate;
  dynamic chargeEndDate;
  int? orderType;
  DateTime? orderBeginDate;
  DateTime? orderEndDate;
  String? distributionType;
  int? unifiedDistribution;
  int? orderDistribution;
  String? contactName;
  String? contactPhone;
  String? address;
  String? importFileId;
  dynamic importFileName;
  String? status;
  String? bookCount;
  String? preOrderCount;
  String? orderCount;
  String? afterSaleCount;
  String? confirmStatus;
  dynamic expressFee;
  List<OperLogList>? operLogList;
  int? organizationId;
  String? organization;
  String? organizationIds;
  dynamic settlementSubject;
  String? serviceTel;
  dynamic weCom;
  dynamic description;
  dynamic isNeedCheck;
  int? isNeedAddress;
  int? isRefundOpen;
  DateTime? refundBeginDate;
  DateTime? refundEndDate;
  String? khbh;
  int? isShownPrice;
  int? isShownPopup;
  dynamic popupId;
  dynamic popupContent;
  int? isShownIsbn;
  List<CustomerList>? customerList;
  int? autoShelf;

  RuleDetailsModel({
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

  factory RuleDetailsModel.fromJson(Map<String, dynamic> json) =>
      RuleDetailsModel(
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
        orderBeginDate: json["orderBeginDate"] == null
            ? null
            : DateTime.parse(json["orderBeginDate"]),
        orderEndDate: json["orderEndDate"] == null
            ? null
            : DateTime.parse(json["orderEndDate"]),
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
        operLogList: json["operLogList"] == null
            ? []
            : List<OperLogList>.from(
                json["operLogList"]!.map((x) => OperLogList.fromJson(x))),
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
        refundBeginDate: json["refundBeginDate"] == null
            ? null
            : DateTime.parse(json["refundBeginDate"]),
        refundEndDate: json["refundEndDate"] == null
            ? null
            : DateTime.parse(json["refundEndDate"]),
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
        "orderBeginDate": orderBeginDate?.toIso8601String(),
        "orderEndDate": orderEndDate?.toIso8601String(),
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
        "operLogList": operLogList == null
            ? []
            : List<dynamic>.from(operLogList!.map((x) => x.toJson())),
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
        "refundBeginDate": refundBeginDate?.toIso8601String(),
        "refundEndDate": refundEndDate?.toIso8601String(),
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

class OperLogList {
  dynamic createTime;
  dynamic updateTime;
  dynamic remark;
  int? operId;
  String? title;
  int? businessType;
  dynamic businessTypes;
  String? method;
  RequestMethod? requestMethod;
  int? operatorType;
  OperName? operName;
  dynamic deptName;
  String? operUrl;
  OperIp? operIp;
  String? operParam;
  JsonResult? jsonResult;
  int? status;
  dynamic errorMsg;
  DateTime? operTime;
  int? costTime;

  OperLogList({
    this.createTime,
    this.updateTime,
    this.remark,
    this.operId,
    this.title,
    this.businessType,
    this.businessTypes,
    this.method,
    this.requestMethod,
    this.operatorType,
    this.operName,
    this.deptName,
    this.operUrl,
    this.operIp,
    this.operParam,
    this.jsonResult,
    this.status,
    this.errorMsg,
    this.operTime,
    this.costTime,
  });

  factory OperLogList.fromJson(Map<String, dynamic> json) => OperLogList(
        createTime: json["createTime"],
        updateTime: json["updateTime"],
        remark: json["remark"],
        operId: json["operId"],
        title: json["title"],
        businessType: json["businessType"],
        businessTypes: json["businessTypes"],
        method: json["method"],
        requestMethod: requestMethodValues.map[json["requestMethod"]]!,
        operatorType: json["operatorType"],
        operName: operNameValues.map[json["operName"]]!,
        deptName: json["deptName"],
        operUrl: json["operUrl"],
        operIp: operIpValues.map[json["operIp"]]!,
        operParam: json["operParam"],
        jsonResult: jsonResultValues.map[json["jsonResult"]]!,
        status: json["status"],
        errorMsg: json["errorMsg"],
        operTime:
            json["operTime"] == null ? null : DateTime.parse(json["operTime"]),
        costTime: json["costTime"],
      );

  Map<String, dynamic> toJson() => {
        "createTime": createTime,
        "updateTime": updateTime,
        "remark": remark,
        "operId": operId,
        "title": title,
        "businessType": businessType,
        "businessTypes": businessTypes,
        "method": method,
        "requestMethod": requestMethodValues.reverse[requestMethod],
        "operatorType": operatorType,
        "operName": operNameValues.reverse[operName],
        "deptName": deptName,
        "operUrl": operUrl,
        "operIp": operIpValues.reverse[operIp],
        "operParam": operParam,
        "jsonResult": jsonResultValues.reverse[jsonResult],
        "status": status,
        "errorMsg": errorMsg,
        "operTime": operTime?.toIso8601String(),
        "costTime": costTime,
      };
}

enum JsonResult { RESULT, RESULT_CODE_0_MESSAGE, RESULT_MESSAGE }

final jsonResultValues = EnumValues({
  "{\"result\":\"成功\"}": JsonResult.RESULT,
  "{\"result\":\"成功\",\"code\":0,\"message\":\"操作成功\"}":
      JsonResult.RESULT_CODE_0_MESSAGE,
  "{\"result\":\"成功\",\"message\":\"\"}": JsonResult.RESULT_MESSAGE
});

enum OperIp { THE_123157155226, THE_2239314818 }

final operIpValues = EnumValues({
  "123.157.155.226": OperIp.THE_123157155226,
  "223.93.148.18": OperIp.THE_2239314818
});

enum OperName { ADMIN, LULUCS }

final operNameValues =
    EnumValues({"admin": OperName.ADMIN, "lulucs": OperName.LULUCS});

enum RequestMethod { POST }

final requestMethodValues = EnumValues({"POST": RequestMethod.POST});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
