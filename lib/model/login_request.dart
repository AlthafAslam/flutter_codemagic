import 'dart:convert';

LoginRequest loginRequestFromJson(String str) {
  final jsonData = json.decode(str);
  return LoginRequest.fromJson(jsonData);
}

String loginRequestToJson(LoginRequest data) {
  final dyn = data.toJson();
  return json.encode(dyn);
}

class LoginRequest{
  D d;

  LoginRequest({
    this.d,
  });

  factory LoginRequest.fromJson(Map<String, dynamic> json) => new LoginRequest(
   d: D.fromJson(json["d"])
  );

  Map<String, dynamic> toJson() => {
    "d": d.toJson(),
  };
  
}

class D {
  String username;
  String password;

  D ({
    this.username,
    this.password,
  });

  factory D.fromJson(Map<String, dynamic> json) => new D(
    username: json["username"],
    password: json["password"],
  );

  Map<String, dynamic> toJson() => {
    "username": username,
    "password": password,
  };
}