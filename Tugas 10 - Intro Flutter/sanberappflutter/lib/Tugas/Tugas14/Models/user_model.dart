import 'dart:convert';
class User{
  final String name, email, address;
  User(this.name, this.email, this.address);
}
UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));
String userModelToJson(UserModel data) => json.encode(data.toJson());
class UserModel {
    UserModel({
        this.name,
        this.email,
        this.address,
        this.id,
        this.createdAt,
    });
    String name;
    String email;
    String address;
    String id;
    DateTime createdAt;
    
    factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        name: json["name"],
        email: json["email"],
        address: json["address"],
        id: json["id"],
        createdAt: DateTime.parse(json["createdAt"]),
    );
    Map<String, dynamic> toJson() => {
        "name": name,
        "email": email,
        "address": address,
        "id": id,
        "createdAt": createdAt.toIso8601String(),
    };
}
