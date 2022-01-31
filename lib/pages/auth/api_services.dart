import 'package:http/http.dart' as http;
import 'dart:convert';

class ApiServices {
  Future<LoginApiResponse> apiCallLogin(Map<String, dynamic> kartik) async {
    var url = Uri.parse(
        'https://e3-qkmountain.qkinnovations.com/qkm-andermatt-backend/api/user/appLogin');
    var response = await http.post(url, body: kartik);

    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');

// //
//      final http.Response response =
//     await http.post(Uri.encodeFull(url), body: activityData);
    final data = jsonDecode(response.body);
    return LoginApiResponse(token: data["token"], error: data["error"]);
  }
}

class LoginApiResponse {
  final String? token;
  final String? error;

  LoginApiResponse({this.token, this.error});
}
