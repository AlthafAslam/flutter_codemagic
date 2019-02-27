import 'package:flutter_ui_app/Managers/object_factory.dart';
import 'package:flutter_ui_app/Model/login_request.dart' as loginReq;
import 'package:flutter_ui_app/Model/login_response.dart' as loginRes;

class UserManager {
  loginRes.LoginResponse _loginResponse;

  Future<String> login({String username, String password}) async {
    String status = "";

    loginReq.LoginRequest loginRequest = new loginReq.LoginRequest(
        d: new loginReq.D(username: username, password: password));
    ObjectFactory()
        .apiClient
        .loginApi(loginRequest.toJson())
        .then((responseFromApi) {
      if (responseFromApi.statusCode == 200) {
        _loginResponse = loginRes.LoginResponse.fromJson(responseFromApi.data);
        status = "success";
      } else {
        status = "failure";
      }
    });
    return status;
  }

  loginRes.LoginResponse get getLoginRes {
    return _loginResponse;
  }

  set setLoginRes(loginRes.LoginResponse value) {
    _loginResponse = value;
  }
}
