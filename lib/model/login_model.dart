class LoginResponseModel {
  LoginResponseModel({
    this.valid,
    this.AccessToken,
    this.appSessionId,
    this.userId,
    this.error,
  });

  String valid;
  String AccessToken;
  String appSessionId;
  String userId;
  String error;

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) {
    return LoginResponseModel(
      AccessToken: json["AccessToken"] != null ? json["AccessToken"] : "",
      appSessionId: json["AppSessionID"] != null ? json["AppSessionID"] : "",
      userId: json["UserID"] != null ? json["UserID"].toString() : "",
      valid: json["Valid"] != null ? json["Valid"].toString() : "",
      error: json["error"] != null ? json["error"] : "",
    );
  }
  Map<String, dynamic> toJson() => {
        "Valid": valid,
        "AccessToken": AccessToken,
        "AppSessionID": appSessionId,
        "UserID": userId,
        "error": error,
      };
}

class LoginRequestModel {
  String email;
  String password;

  LoginRequestModel({
    this.email,
    this.password,
  });

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {
      'email': email.trim(),
      'password': password.trim(),
    };

    return map;
  }
}

// Login end and Forgot start

class ForgotResponseModel {
  ForgotResponseModel({
    this.valid,
    this.SuccessMessage,
    this.Message,
    this.error,
  });
  String valid;
  String SuccessMessage;
  String Message;
  String error;

  factory ForgotResponseModel.fromJson(Map<String, dynamic> json) {
    return ForgotResponseModel(
      SuccessMessage:
          json["SuccessMessage"] != null ? json["SuccessMessage"] : "",
      Message: json["Message"] != null ? json["Message"] : "",
      valid: json["Valid"] != null ? json["Valid"].toString() : "",
      error: json["error"] != null ? json["error"] : "",
    );
  }
  Map<String, dynamic> toJson() => {
        "Valid": valid,
        "SuccessMessage": SuccessMessage,
        "Message": Message,
        "error": error,
      };
}

class ForgotRequestModel {
  String email;

  ForgotRequestModel({
    this.email,
  });

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {
      'email': email.trim(),
    };

    return map;
  }
}
