// To parse this JSON data, do
//
//     final userRole = userRoleFromJson(jsonString);

import 'dart:convert';

List<String> userRoleFromJson(String str) =>
    List<String>.from(json.decode(str).map((x) => x));

String userRoleToJson(List<String> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x)));
