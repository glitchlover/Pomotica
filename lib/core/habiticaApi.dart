import 'dart:async';

import 'package:http/http.dart';
import 'package:pomotica/services/habiticaAuthServices.dart';
import 'package:pomotica/services/myHabiticaAuth.dart';

import '../model/authModel.dart';

class HabiticaApi {
  late AuthModel authModel;
  late String _apiKey;
  late String _userId;
  final String _xclient = "${MyHabiticaAuth.userId}+pomotica";
  String path;
  Client client = Client();

  HabiticaApi({this.path = '/api/v3/user'}) {
    Timer(const Duration(milliseconds: 1000), () async {
      AuthModel auth = await HabiticaAuthServices.getAuth();
      _apiKey = auth.apiKey;
      _userId = auth.userId;
    });
  }

  Future<Response> getApiResponse() async{
    await Future.delayed(const Duration(milliseconds: 2000));
    return client.get(gethabiticaUri(path), headers: await getHeaders());
  }

  gethabiticaUri(path) => Uri(
        scheme: 'https',
        host: 'habitica.com',
        path: path,
      );

  Future<Map<String, String>> getHeaders() async{
    await Future.delayed(const Duration(milliseconds: 2000));
    return {
      'Content-Type': 'json',
      'x-api-user': _userId,
      'x-api-key': _apiKey,
      'x-client': _xclient,
    };
  }
}
