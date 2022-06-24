import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:iconsax/iconsax.dart';
import 'package:pomotica/model/authModel.dart';
import 'package:pomotica/services/myHabiticaAuth.dart';
import 'package:pomotica/services/userDataService.dart';

import '../Themes/myColors.dart';
import '../model/habiticaUserModel.dart';
import 'documentServices.dart';

class HabiticaAuthServices {
  var token = [];
  String _apiKey = "";
  String _userId = "";
  String _xclient = "${MyHabiticaAuth.userId}+pomotica";
  late AuthModel authModel;

  var habiticaUri = Uri(
    scheme: 'https',
    host: 'habitica.com',
    path: '/api/v3/user',
  );

  // 'curl https://habitica.com/api/v3/user -s -X GET --compressed \
  //   -H "Content-Type:application/json" \
  //   -H "x-api-user: 12345678-90ab-416b-cdef-1234567890ab" \
  //   -H "x-api-key: 12345678-90ab-416b-cdef-1234567890ab" \
  //   -H "x-client: 12345678-90ab-416b-cdef-1234567890ab-Testing"'

  HabiticaAuthServices(this.token) {
    _apiKey = token[0];
    _userId = token[1];
  }

  Future<String> getHabiticaConnection() async {
    var headers = {
      'Content-Type': 'json',
      'x-api-user': _userId,
      'x-api-key': _apiKey,
      'x-client': _xclient,
    };

    var client = http.Client();
    try {
      var res = await client.get(habiticaUri, headers: headers);
      if (res.statusCode != 200)
        return ('Error!: statusCode= ${res.statusCode}');
      HabiticaUserModel habiticaUserModel =
          HabiticaUserModel.fromJson(res.body);
      DocumentServices(db: "habitica_user").saveUser(habiticaUserModel);
      // print("getHabiticaConnection:" + res.body);
      return (res.body);
    } on SocketException catch (e) {
      return "Not Connected";
    }
  }

  setAuth({bool? loggedIn_}) async {
    authModel = AuthModel(
        apiKey: _apiKey, userId: _userId, loggedIn: loggedIn_ ?? true);
    DocumentServices(db: "auth").saveAuth(authModel);
  }

  static getAuth() async {
    var retriveAuth = await DocumentServices(db: "auth").retriveAuth();
    // print("getAuth() : " + retriveAuth);
    if (retriveAuth == "Error") {
      return "Error";
    }
    if (retriveAuth == "Not Connected") {
      return "Not Connected";
    }
    var authModel = AuthModel.fromJson(retriveAuth);
    return authModel;
  }
}
