//TODO

class UserModel {
  String? sid;
  String? title;
  int? status;
  String? pic;
  String? url;

  UserModel.fromJson(Map<String, dynamic> mapJson) {
    sid = mapJson["_id"];
    title = mapJson["title"];
    status = mapJson["status"];
    pic = mapJson["pic"];
    url = mapJson["url"];
  }
}
