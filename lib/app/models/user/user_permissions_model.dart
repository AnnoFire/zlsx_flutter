// To parse this JSON data, do
//
//     final userPermissionsModal = userPermissionsModalFromJson(jsonString);

import 'dart:convert';

List<String> userPermissionsModalFromJson(String str) =>
    List<String>.from(json.decode(str).map((x) => x));

String userPermissionsModalToJson(List<String> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x)));
