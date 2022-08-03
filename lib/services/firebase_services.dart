import 'dart:convert';

import 'package:get/get_connect/http/src/status/http_status.dart';
import 'package:http/http.dart' as http;
import 'package:loginx/model/userModel.dart';

class FirebaseServices {
  static const String FirebaseURL =
      "https://loginx-e2132-default-rtdb.firebaseio.com/";

  Future<List<usermodel>> getUsers() async {
    final response = await http.get(Uri.parse(FirebaseURL));
    switch (response.statusCode) {
      case HttpStatus.ok:
        final userModel = json.decode(response.body);
        final userList = userModel as List<usermodel>;
        return userList;

      default:
        return Future.error(response.statusCode);
    }
  }
}
