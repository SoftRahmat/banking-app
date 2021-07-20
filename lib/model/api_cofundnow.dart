import 'dart:async';
import 'package:bank_cofundr/model/cofundnow_model.dart';
import 'package:bank_cofundr/model/login_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class FundnowAPIService {
  Future<FundnowResponseModel> getFundNow(
      FundnowRequestModel fundnowRequestModel) async {
    var url = 'https://cofundr.finhero.asia/admin/api_get_notes_details.cfm';
    var body = json.encode(fundnowRequestModel);
    var AccessToken = LoginResponseModel(AccessToken: "AccessToken");

    var response = await http.post(
      url,
      headers: {
        "Content-Type": "application/json",
        "Access-Token": "$AccessToken",
      },
      body: body,
    );
    print("${response.statusCode}");
    print("${response.body}");
    return FundnowResponseModel.fromJson(
      json.decode(response.body),
    );
  }
}
