// ignore_for_file: import_of_legacy_library_into_null_safe

import 'dart:convert';
import 'package:http/http.dart';

import '../model/user_model.dart';

class UserRepository {
  String endPointUrl = "";
  Future<List<UserModel>> getUsers() async {
    Response response = await get(Uri.parse(endPointUrl));
    if (response.statusCode == 200) {
      final List result = jsonDecode(response.body)['data'];
      return result.map(((e) => UserModel.fromJson(e))).toList();
    } else {
      throw Exception(response.reasonPhrase);
    }
  }
}
