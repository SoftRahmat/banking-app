import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:bank_cofundr/model/login_model.dart';

class APIService {
  Future<LoginResponseModel> createUser(LoginRequestModel requestModel) async {
    var url = 'https://cofundr.finhero.asia/api_login.cfm';
    var body = json.encode(requestModel);

    var response = await http.post(
      url,
      headers: {"Content-Type": "application/json"},
      body: body,
    );
    print("${response.statusCode}");
    print("${response.body}");
    return LoginResponseModel.fromJson(
      json.decode(response.body),
    );
  }
}

// Login section complete here

class ForgotAPIService {
  Future<ForgotResponseModel> forgot(ForgotRequestModel requestModel) async {
    var url = 'https://cofundr.finhero.asia/api_forgot_password.cfm';
    var body = json.encode(requestModel);

    var response = await http.post(
      url,
      headers: {"Content-Type": "application/json"},
      body: body,
    );
    print("${response.statusCode}");
    print("${response.body}");
    return ForgotResponseModel.fromJson(
      json.decode(response.body),
    );
  }
}
