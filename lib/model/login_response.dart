import 'dart:convert';

LoginResponse loginResponseFromJson(String str) {
  final jsonData = json.decode(str);
  return LoginResponse.fromJson(jsonData);
}

String loginResponseToJson(LoginResponse data) {
  final dyn = data.toJson();
  return json.encode(dyn);
}

class LoginResponse {
  D d;
  LoginResponse({
    this.d,
  });

  factory LoginResponse.fromJson(Map<String, dynamic> json) => new LoginResponse(
      d: D.fromJson(json["d"])
  );

  Map<String, dynamic> toJson() => {
    "d": d.toJson(),
  };
}


class D {
  String token;
  Data data;
  String message;

  D({
    this.token,
    this.data,
    this.message,
  });

  factory D.fromJson(Map<String, dynamic> json) => new D(
    token: json["token"],
    data: Data.fromJson(json["data"]),
    message: json["message"],
  );

  Map<String, dynamic> toJson() => {
    "token": token,
    "data": data.toJson(),
    "message": message,
  };
}

class Data {
  int id;
  String username;
  String firstName;
  String lastName;
  String email;
  bool isSuperuser;
  bool isStaff;
  bool isActive;
  String lastLogin;

  Data({
    this.id,
    this.username,
    this.firstName,
    this.lastName,
    this.email,
    this.isSuperuser,
    this.isStaff,
    this.isActive,
    this.lastLogin,
  });

  factory Data.fromJson(Map<String, dynamic> json) => new Data(
    id: json["id"],
    username: json["username"],
    firstName: json["first_name"],
    lastName: json["last_name"],
    email: json["email"],
    isSuperuser: json["is_superuser"],
    isStaff: json["is_staff"],
    isActive: json["is_active"],
    lastLogin: json["last_login"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "username": username,
    "first_name": firstName,
    "last_name": lastName,
    "email": email,
    "is_superuser": isSuperuser,
    "is_staff": isStaff,
    "is_active": isActive,
    "last_login": lastLogin,
  };
}