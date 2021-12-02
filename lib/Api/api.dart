import 'dart:convert';

import 'package:dairymanagement/models/usermodel.dart';
import 'package:http/http.dart' as http;

Future<List<UserModel>> getUser(email) async{

  final response = await http.get(Uri.parse('https://dairymanagementapi.herokuapp.com/users/find/$email'));
  if (response.statusCode == 200){
    return parselUser(response.body);
  }
  else {
    throw Exception('Unable to make a request to URL');
  }
}

List<UserModel> parseUser(String responseBody){

  final parse = json.decode(responseBody).cast<Map<String, dynamic>>();
  return parse.map(<UserModel>(json) => UserModel.fromJson(json)).toList();
}
