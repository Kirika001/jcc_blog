
class LoginModel {
  Meta? meta;
  Data? data;

  LoginModel({this.meta, this.data});

  LoginModel.fromJson(Map<String, dynamic> json) {
    meta = json["meta"] == null ? null : Meta.fromJson(json["meta"]);
    data = json["data"] == null ? null : Data.fromJson(json["data"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(meta != null) {
      _data["meta"] = meta?.toJson();
    }
    if(data != null) {
      _data["data"] = data?.toJson();
    }
    return _data;
  }
}

class Data {
  String? token;
  User? user;

  Data({this.token, this.user});

  Data.fromJson(Map<String, dynamic> json) {
    token = json["token"];
    user = json["user"] == null ? null : User.fromJson(json["user"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["token"] = token;
    if(user != null) {
      _data["user"] = user?.toJson();
    }
    return _data;
  }
}

class User {
  int? id;
  String? name;
  String? email;
  String? createdAt;
  dynamic updatedAt;
  String? username;
  List<Tokens>? tokens;

  User({this.id, this.name, this.email, this.createdAt, this.updatedAt, this.username, this.tokens});

  User.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    name = json["name"];
    email = json["email"];
    createdAt = json["created_at"];
    updatedAt = json["updated_at"];
    username = json["username"];
    tokens = json["tokens"] == null ? null : (json["tokens"] as List).map((e) => Tokens.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["name"] = name;
    _data["email"] = email;
    _data["created_at"] = createdAt;
    _data["updated_at"] = updatedAt;
    _data["username"] = username;
    if(tokens != null) {
      _data["tokens"] = tokens?.map((e) => e.toJson()).toList();
    }
    return _data;
  }
}

class Tokens {
  String? id;
  String? userId;
  String? clientId;
  String? name;
  List<dynamic>? scopes;
  bool? revoked;
  String? createdAt;
  String? updatedAt;
  String? expiresAt;

  Tokens({this.id, this.userId, this.clientId, this.name, this.scopes, this.revoked, this.createdAt, this.updatedAt, this.expiresAt});

  Tokens.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    userId = json["user_id"];
    clientId = json["client_id"];
    name = json["name"];
    scopes = json["scopes"] ?? [];
    revoked = json["revoked"];
    createdAt = json["created_at"];
    updatedAt = json["updated_at"];
    expiresAt = json["expires_at"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["user_id"] = userId;
    _data["client_id"] = clientId;
    _data["name"] = name;
    if(scopes != null) {
      _data["scopes"] = scopes;
    }
    _data["revoked"] = revoked;
    _data["created_at"] = createdAt;
    _data["updated_at"] = updatedAt;
    _data["expires_at"] = expiresAt;
    return _data;
  }
}

class Meta {
  int? code;
  String? status;
  String? message;

  Meta({this.code, this.status, this.message});

  Meta.fromJson(Map<String, dynamic> json) {
    code = json["code"];
    status = json["status"];
    message = json["message"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["code"] = code;
    _data["status"] = status;
    _data["message"] = message;
    return _data;
  }
}