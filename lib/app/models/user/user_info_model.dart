// To parse this JSON data, do
//
//     final userInfoModal = userInfoModalFromJson(jsonString);

import 'dart:convert';

UserInfoModal userInfoModalFromJson(String str) =>
    UserInfoModal.fromJson(json.decode(str));

String userInfoModalToJson(UserInfoModal data) => json.encode(data.toJson());

class UserInfoModal {
  DateTime createTime;
  dynamic updateBy;
  DateTime updateTime;
  dynamic remark;
  int userId;
  int deptId;
  int organizationId;
  String organization;
  String userName;
  String nickName;
  String phonenumber;
  String status;
  String loginIp;
  dynamic loginDate;
  Dept dept;
  List<Role> roles;
  dynamic roleIds;
  dynamic postIds;
  dynamic roleId;
  dynamic organizationIds;
  bool admin;

  UserInfoModal({
    required this.createTime,
    required this.updateBy,
    required this.updateTime,
    required this.remark,
    required this.userId,
    required this.deptId,
    required this.organizationId,
    required this.organization,
    required this.userName,
    required this.nickName,
    required this.phonenumber,
    required this.status,
    required this.loginIp,
    required this.loginDate,
    required this.dept,
    required this.roles,
    required this.roleIds,
    required this.postIds,
    required this.roleId,
    required this.organizationIds,
    required this.admin,
  });

  factory UserInfoModal.fromJson(Map<String, dynamic> json) => UserInfoModal(
        createTime: DateTime.parse(json["createTime"]),
        updateBy: json["updateBy"],
        updateTime: DateTime.parse(json["updateTime"]),
        remark: json["remark"],
        userId: json["userId"],
        deptId: json["deptId"],
        organizationId: json["organizationId"],
        organization: json["organization"],
        userName: json["userName"],
        nickName: json["nickName"],
        phonenumber: json["phonenumber"],
        status: json["status"],
        loginIp: json["loginIp"],
        loginDate: json["loginDate"],
        dept: Dept.fromJson(json["dept"]),
        roles: List<Role>.from(json["roles"].map((x) => Role.fromJson(x))),
        roleIds: json["roleIds"],
        postIds: json["postIds"],
        roleId: json["roleId"],
        organizationIds: json["organizationIds"],
        admin: json["admin"],
      );

  Map<String, dynamic> toJson() => {
        "createTime": createTime.toIso8601String(),
        "updateBy": updateBy,
        "updateTime": updateTime.toIso8601String(),
        "remark": remark,
        "userId": userId,
        "deptId": deptId,
        "organizationId": organizationId,
        "organization": organization,
        "userName": userName,
        "nickName": nickName,
        "phonenumber": phonenumber,
        "status": status,
        "loginIp": loginIp,
        "loginDate": loginDate,
        "dept": dept.toJson(),
        "roles": List<dynamic>.from(roles.map((x) => x.toJson())),
        "roleIds": roleIds,
        "postIds": postIds,
        "roleId": roleId,
        "organizationIds": organizationIds,
        "admin": admin,
      };
}

class Dept {
  dynamic createTime;
  dynamic updateTime;
  dynamic remark;
  int deptId;
  int parentId;
  String ancestors;
  String deptName;
  int orderNum;
  dynamic leader;
  dynamic phone;
  dynamic email;
  String status;
  dynamic delFlag;
  dynamic parentName;
  dynamic organizationId;
  dynamic customerId;
  List<dynamic> children;

  Dept({
    required this.createTime,
    required this.updateTime,
    required this.remark,
    required this.deptId,
    required this.parentId,
    required this.ancestors,
    required this.deptName,
    required this.orderNum,
    required this.leader,
    required this.phone,
    required this.email,
    required this.status,
    required this.delFlag,
    required this.parentName,
    required this.organizationId,
    required this.customerId,
    required this.children,
  });

  factory Dept.fromJson(Map<String, dynamic> json) => Dept(
        createTime: json["createTime"],
        updateTime: json["updateTime"],
        remark: json["remark"],
        deptId: json["deptId"],
        parentId: json["parentId"],
        ancestors: json["ancestors"],
        deptName: json["deptName"],
        orderNum: json["orderNum"],
        leader: json["leader"],
        phone: json["phone"],
        email: json["email"],
        status: json["status"],
        delFlag: json["delFlag"],
        parentName: json["parentName"],
        organizationId: json["organizationId"],
        customerId: json["customerId"],
        children: List<dynamic>.from(json["children"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "createTime": createTime,
        "updateTime": updateTime,
        "remark": remark,
        "deptId": deptId,
        "parentId": parentId,
        "ancestors": ancestors,
        "deptName": deptName,
        "orderNum": orderNum,
        "leader": leader,
        "phone": phone,
        "email": email,
        "status": status,
        "delFlag": delFlag,
        "parentName": parentName,
        "organizationId": organizationId,
        "customerId": customerId,
        "children": List<dynamic>.from(children.map((x) => x)),
      };
}

class Role {
  dynamic createTime;
  dynamic updateTime;
  dynamic remark;
  int roleId;
  String roleName;
  String dataScope;
  String status;
  dynamic delFlag;
  bool flag;
  dynamic menuIds;
  dynamic deptIds;
  List<String> permissions;
  dynamic menuCount;
  bool admin;

  Role({
    required this.createTime,
    required this.updateTime,
    required this.remark,
    required this.roleId,
    required this.roleName,
    required this.dataScope,
    required this.status,
    required this.delFlag,
    required this.flag,
    required this.menuIds,
    required this.deptIds,
    required this.permissions,
    required this.menuCount,
    required this.admin,
  });

  factory Role.fromJson(Map<String, dynamic> json) => Role(
        createTime: json["createTime"],
        updateTime: json["updateTime"],
        remark: json["remark"],
        roleId: json["roleId"],
        roleName: json["roleName"],
        dataScope: json["dataScope"],
        status: json["status"],
        delFlag: json["delFlag"],
        flag: json["flag"],
        menuIds: json["menuIds"],
        deptIds: json["deptIds"],
        permissions: List<String>.from(json["permissions"].map((x) => x)),
        menuCount: json["menuCount"],
        admin: json["admin"],
      );

  Map<String, dynamic> toJson() => {
        "createTime": createTime,
        "updateTime": updateTime,
        "remark": remark,
        "roleId": roleId,
        "roleName": roleName,
        "dataScope": dataScope,
        "status": status,
        "delFlag": delFlag,
        "flag": flag,
        "menuIds": menuIds,
        "deptIds": deptIds,
        "permissions": List<dynamic>.from(permissions.map((x) => x)),
        "menuCount": menuCount,
        "admin": admin,
      };
}
